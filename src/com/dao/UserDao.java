package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;  
import org.hibernate.SessionFactory;  
import org.hibernate.Transaction;  
import org.hibernate.boot.Metadata;  
import org.hibernate.boot.MetadataSources;  
import org.hibernate.boot.registry.StandardServiceRegistry;  
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import com.book.Book;
import com.cart.Cart;
import com.user.User;  

public class UserDao {
	
	public static String register(User u) throws ClassNotFoundException
	{
		 String i=null;
		 Class.forName("com.mysql.jdbc.Driver");  
		 StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();  
		 Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();  
		  
		SessionFactory factory = meta.getSessionFactoryBuilder().build();  
		Session session = factory.openSession();  
		Transaction t = session.beginTransaction();   
		  
		i=(String)session.save(u);    
		  
		t.commit();    
		session.close();    
		    
		return i;
	}
	
	public static String cartdetails(Cart c) throws ClassNotFoundException
	{
		 String i=null;
		 Class.forName("com.mysql.jdbc.Driver");  
		 StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();  
		 Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();  
		  
		SessionFactory factory = meta.getSessionFactoryBuilder().build();  
		Session session = factory.openSession();  
		Transaction t = session.beginTransaction();   
		  
		i=(String)session.save(c);    
		  
		t.commit();    
		session.close();    
		    
		return i;
	}
	
	public static Book details(int bookid) throws ClassNotFoundException
	{
		Book b;
		Class.forName("com.mysql.jdbc.Driver");  
		 StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();  
		 Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();  
		  
		SessionFactory factory = meta.getSessionFactoryBuilder().build();  
		Session session = factory.openSession();  
		Transaction t = session.beginTransaction();   
		  
		b=session.load(Book.class,bookid);  
		System.out.println(b.getAuthor()); 
		t.commit();    
		session.close();    
		    
		return b;
	}
	
	public static Book cart(int bookid) throws ClassNotFoundException
	{
		Book b;
		Class.forName("com.mysql.jdbc.Driver");  
		 StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();  
		 Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();  
		  
		SessionFactory factory = meta.getSessionFactoryBuilder().build();  
		Session session = factory.openSession();  
		Transaction t = session.beginTransaction();   
		  
		b=session.load(Book.class,bookid);  
		System.out.println(b.getAuthor());
		System.out.println(b.getBook_name());
		System.out.println(b.getPrice());
		System.out.println(b.getPath());
		  
		t.commit();    
		session.close();    
		    
		return b;
	}
	
	public static User login(String mobile) throws ClassNotFoundException
	{
		 User user =null;
		 SessionFactory factory=null;
		 Session session=null;
		 
		 Class.forName("com.mysql.jdbc.Driver");  
		 try {
		 StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();  
		 Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();  
		  
		 factory = meta.getSessionFactoryBuilder().build();  
		 session = factory.openSession();  
		Transaction t = session.beginTransaction();   
		  
		Object o=(User)session.load(User.class,new String(mobile)); 
		user=(User)o;
		System.out.println(user.getPassword());
		t.commit();
		 
		
		 }catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	    	
	    	session.close();  
	    }
		    
		return user;
	}
	
	public static Connection getConnection(){  
        Connection con=null;  
        try{  
        	Class.forName("com.mysql.jdbc.Driver"); 
        	System.out.println("Driver found");
            con=DriverManager.getConnection("jdbc:mysql://192.168.100.26:3306/group012_bookstore","group012","welcome");  
        }catch(Exception e){System.out.println(e);}  
        return con;  
    } 
	
	public static int save(int bid,int quantity,double price,String userid){  
        int status=0;  
        try{  
            Connection con=UserDao.getConnection();  
            PreparedStatement ps=con.prepareStatement(  
                         "insert into cart(bookid,user_id,quantity,price) values (?,?,?,?)");  
            ps.setInt(1,bid);  
            ps.setString(2,userid);
            ps.setInt(3,quantity);  
            ps.setDouble(4, price);  
            
          status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return status;  
    }  
	
	
	public static List<Cart> getAllRecords(String m){
		List<Cart> list=new ArrayList<Cart>();
		
		try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from cart where user_id=?");
		ps.setString(1,m);  
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
		Cart u=new Cart();
		
		u.setCart_id(rs.getInt("cart_id"));
		u.setBookid(rs.getInt("bookid"));
		u.setUser_id(rs.getString("user_id"));
		u.setQuantity(rs.getInt("quantity"));
		u.setPrice(rs.getDouble("price"));

		list.add(u);
		}
		}catch(Exception e){System.out.println(e);}
		return list;
		}
	
	public static int delete(Cart u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from cart where cart_id=?");  
	        ps.setInt(1,u.getCart_id());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	
	

}
