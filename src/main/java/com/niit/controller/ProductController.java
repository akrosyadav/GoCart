package com.niit.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;
import com.niit.service.CategoryService;
import com.niit.service.ProductService;
import com.niit.service.SupplierService;

@Controller
public class ProductController {
	
	private Path path;
	
	@Autowired
	ProductService ps;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private SupplierService supplierService;
	
	@Autowired
	private JavaMailSender mailSender;
	
	@RequestMapping("/All_Product")
	public String getAllProduct(Model model)
	{
		List<Product> l =ps.getAllProduct();
		
		model.addAttribute("product", l);
		return "AllProduct";
		
	}
	
	
	@RequestMapping("viewProduct/{pid}")
	public String getProductById(@PathVariable  int pid, Model model)
	{	
		Product p=ps.getProductById(pid);
		model.addAttribute("product",p);
		return "viewProduct";
	}
	
	@RequestMapping("/add_Product")
	public String getProductForm(Model model)
	{		
		/*Used for making Category available in addproduct Form*/
		model.addAttribute("category",new Category());
		List<Category> cat_details= categoryService.getAllCategory();
		model.addAttribute("desc",cat_details );
		
		/*Used for making Supplier available in addproduct Form*/
		model.addAttribute("supplier",new Supplier());
		List<Supplier> sup_details= supplierService.getAllSupplier();
		model.addAttribute("supp", sup_details);
		
		model.addAttribute("product",new Product());
		return "addProduct";
	}
		
	@RequestMapping(value="/insertProduct", method = RequestMethod.POST)
    public String addProductDetails(@Valid @ModelAttribute("product") Product product, BindingResult result, HttpServletRequest request)
	{
		 if(result.hasErrors()){
	            return "redirect:/add_Product";
	        }
		 Category category=categoryService.getByName(product.getCategory().getDescription());
		 product.setCategory(category);
		 Supplier supplier=supplierService.getByName(product.getSupplier().getName());
		 product.setSupplier(supplier);
		 
		 ps.addProduct(product);
		
		 MultipartFile productImage = product.getImage();
	        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
	        path = Paths.get(rootDirectory + "/WEB-INF/resources/images/" + product.getPid()+ ".jpg");

	        if(productImage != null && !productImage.isEmpty()){
	            try {
	                productImage.transferTo(new File(path.toString()));
	            } catch (Exception ex){
	                ex.printStackTrace();
	                throw new RuntimeException("Product image saving failed", ex);
	            }
	        }
		 
		/* MultipartFile prodImage = product.getImage();
		 if(!prodImage.isEmpty())
		 {
			 ;Path paths = Paths.get("D:/WORKSPACE/MyEBazaarFrontEnd/src/main/webapp/WEB-INF/resources/images/"+product.getPid()+".jpg");
			 
			 try
			 {
				 prodImage.transferTo(new File(paths.toString()));
			 }
			 catch(IllegalStateException e)
			 {
				 e.printStackTrace();
			 }
			 catch(IOException e)
			 {
				 e.printStackTrace();
			 }
		 }*/
		 
		 
		 
		 
		/*ServletContext context=request.getServletContext();
		String path=context.getRealPath("F:/WORKSPACE/MyEBazaarFrontEnd/src/main/webapp/WEB-INF/resources/images/" +product.getPid()+ ".jpg");
		System.out.println("Path = "+path);
		System.out.println("File name = "+product.getImage().getOriginalFilename());
		File f=new File(path);
		if(!product.getImage().isEmpty()) 
			{
			try {
				byte[] bytes=product.getImage().getBytes();
				BufferedOutputStream bs=new BufferedOutputStream(new FileOutputStream(f));
				bs.write(bytes);
				bs.close(); 
				System.out.println("Image uploaded");			
				ps.addProduct(product);
				System.out.println("Data Inserted");
				}
				catch(Exception ex)
				{
				System.out.println(ex.getMessage());
				}
			}*/
        
		
        return "redirect:/All_Product";
	}

	@RequestMapping("/admin/deleteProduct/{pid}")
	public String deleteProduct(@PathVariable int pid)
	{
		ps.deleteProduct(pid);
		return "redirect:/AllProduct";
	}
	
	@RequestMapping("/admin/editProductForm/{pid}")
	public String editProductForm(@PathVariable int pid ,Model model)
	{
		/*Used for making Category available in editproduct Form*/
		model.addAttribute("category",new Category());
		List<Category> cat_details= categoryService.getAllCategory();
		model.addAttribute("desc",cat_details );
		
		/*Used for making Supplier available in editproduct Form*/
		model.addAttribute("supplier",new Supplier());
		List<Supplier> sup_details= supplierService.getAllSupplier();
		model.addAttribute("supp", sup_details);
		
		
		model.addAttribute("product1",ps.getProductById(pid));
		return "editProduct";
	}
	
	@RequestMapping(value="/editProduct/{pid}", method = RequestMethod.POST)
    public String editProductDetails(@Valid @ModelAttribute("product1") Product product, BindingResult result, HttpServletRequest request)
	{
 
        if(result.hasErrors()){
            return "redirect:/editProduct";
        }
        
        Category category=categoryService.getByName(product.getCategory().getDescription());
		 Supplier supplier=supplierService.getByName(product.getSupplier().getName());
		 product.setCategory(category);
		 product.setSupplier(supplier);
        
        ps.addProduct(product);
		
        MultipartFile prodImage = product.getImage();
		 if(!prodImage.isEmpty())
		 {
			 Path paths = Paths.get("D:/WORKSPACE/MyEBazaarFrontEnd/src/main/webapp/WEB-INF/resources/images/"+product.getPid()+".jpg");
			 
			 try
			 {
				 prodImage.transferTo(new File(paths.toString()));
			 }
			 catch(IllegalStateException e)
			 {
				 e.printStackTrace();
			 }
			 catch(IOException e)
			 {
				 e.printStackTrace();
			 }
		 }
        
        
        return "redirect:/All_Product";
	}
	
	@RequestMapping("/product/favorite/{pid}")
    public String viewSendMailPage(@PathVariable int pid, Model model) throws IOException{
    	Product product = ps.getProductById(pid);
        model.addAttribute("product", product);

        return "sendMail";
    }
    @RequestMapping(value="/product/sendEmail", method=RequestMethod.POST)
    public String sendMail(HttpServletRequest request)
    {
    	try
		{
		String recipientAddress = request.getParameter("recipient");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		
		// prints debug info
		System.out.println("To: " + recipientAddress);
		System.out.println("Subject: " + subject);
		System.out.println("Message: " + message);
		
		// creates a simple e-mail object
		SimpleMailMessage email = new SimpleMailMessage();
		email.setTo(recipientAddress);
		email.setSubject(subject);
		email.setText(message);
		
		// sends the e-mail
		mailSender.send(email);
		
		
		}
		catch(Exception ex)
		{
			System.out.println("Exception = "+ex);
		}
		return "Success";
    }
	
	
	
}
