package com.itwill.test;

import java.util.ArrayList;

import com.itwill.dao.CustomerDaoImpl;
import com.itwill.dto.Customer;
import com.itwill.service.CustomerService;

public class CustomerDaoTestMain {

	public static void main(String[] args) throws Exception {
        
		CustomerDaoImpl customerDaoImpl = new CustomerDaoImpl(JavaSeDataSource.getDataSource());
		
		Customer customer = new Customer();
		CustomerService customerService = new CustomerService();
		ArrayList<Customer> customers = new ArrayList<Customer>();
		
		/*
		System.out.println("------------------ create ------------------");
		int row = customerService.create(new Customer("1234@email.com","1234", "19450815", "012-3456-7890", "M"));
		System.out.println("email: "+customer.getcEmail());
        System.out.println(row);
        System.out.println();
		*/
		
        System.out.println("------------------ select by email ------------------");
        customer = customerService.findByEmail("1234@email.com");
        System.out.println("email: "+customer.getcEmail());
        System.out.println();
        
        System.out.println("------------------ select all ------------------");
        customers = customerService.findAll();
        for (Customer customer2 : customers) {
        	System.out.println("emails: "+customer2.getcEmail());		
		}
        System.out.println();
        
        System.out.println("------------------ find email ------------------");
        String email = customerService.findEmail("06678521", "024-5287-0854");
        System.out.println("email: " + email);
        System.out.println();
       
        System.out.println("------------------ update ------------------");
        int row = customerService.update(new Customer("9012@email.com","000000","99999999","999-9999-9999","F"));
        System.out.println(row);
        System.out.println("password: " + customerService.findByEmail("1234@email.com").getcPassword());
        System.out.println();
        
        System.out.println("------------------ update password by email ------------------");
        row = customerService.updateByEmail("111111", "9012@email.com");
        System.out.println(row);
        System.out.println("password: "+customerService.findByEmail("9012@email.com").getcPassword());
        System.out.println();
        
        System.out.println("------------------ update password by tel ------------------");
        row = customerService.updateByTel("222222", "000-0000-0000");
        System.out.println(row);
        System.out.println("password: " + customerService.findByEmail("1234@email.com").getcPassword());
        System.out.println();
        
        System.out.println("------------------ remove ------------------");
        row = customerService.remove("1234@email.com");
        System.out.println(row);
        
	}    

}