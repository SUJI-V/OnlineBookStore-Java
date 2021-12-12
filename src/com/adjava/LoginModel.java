package com.adjava;

import org.hibernate.query.Query;



import java.util.List; //util list not hibernate list

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration; //donot import from javax;

public class LoginModel {
	//SessionFactory factory;
	
	public boolean processLogin(Login obj) //user login
	{
		SessionFactory factory=new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Login.class).buildSessionFactory();
		/*creating factory object*/
		
		Session session=factory.getCurrentSession(); //creating a session
		Transaction t=session.beginTransaction();    //creating transaction
		Query<Login> q=session.createQuery("from Login where name=:n and pwd=:p");     /*give entity class name,gives query reference */
		q.setParameter("n",obj.name);
		q.setParameter("p",obj.pwd);
		List<Login> l=q.getResultList();
	if(l.size()>0)
	{
		return true;
	}
	else
	{
		return false;
	}
	
	}

	public void insert(Login obj) //user registration
	{
		SessionFactory factory=new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Login.class).buildSessionFactory();
	/*creating factory object*/
	
	
		//Session session=factory.openSession();
		Session session=factory.getCurrentSession(); //creating a session
		Transaction t=session.beginTransaction();    //creating transaction
		System.out.println(obj.id);
		session.save(obj);
		t.commit();
	}

	public boolean checkLogin1(Adminlogin obj) //admin login
	{
	//Session s= factory.openSession();
		SessionFactory factory=new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Adminlogin.class).buildSessionFactory();
		/*creating factory object*/
		
		
		Session s=factory.getCurrentSession(); //creating a session
		Transaction t=s.beginTransaction();    //creating transaction
		
	Query q=s.createQuery("from Adminlogin where name=:n and pwd=:p");//createQuery("from adminlogin where name=:n and pwd=:p");
	q.setParameter("n", obj.name);
	q.setParameter("p", obj.pwd);
	List<Login> l=q.getResultList();
	//System.out.println(l.size());
	if(l.size()>0)
		return true;//return "adminhome";
	else
		return false;//return "adminlogin";
	}
	public void insertadminaddbook(Adminaddbook obj) //admin add book to database.
	{
		SessionFactory factory=new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Adminaddbook.class).buildSessionFactory();
		/*creating factory object*/
		
		
			//Session session=factory.openSession();
			Session session=factory.getCurrentSession(); //creating a session
			Transaction t=session.beginTransaction();    //creating transaction
			//System.out.println(obj.id);
			session.save(obj);
			t.commit();
		
		//Session s=factory.openSession();
		//Transaction t=s.beginTransaction();
		//s.save(obj);
		//t.commit();
	}
	public List<Adminaddbook>selectdata()
	{
		SessionFactory factory=new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Adminaddbook.class).buildSessionFactory();
		/*creating factory object*/
		
		
			//Session session=factory.openSession();
			Session session=factory.getCurrentSession(); //creating a session
			Transaction t=session.beginTransaction();    //creating transaction
		//Session s=factory.openSession();
		Query q=session.createQuery("from Adminaddbook");
		List<Adminaddbook> li=q.list();
		return li;
	}
	
	
	public void deletebook(Adminaddbook obj)
	{
		SessionFactory factory=new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Adminaddbook.class).buildSessionFactory();
		/*creating factory object*/
		
		
			//Session session=factory.openSession();
			Session session=factory.getCurrentSession(); //creating a session
			Transaction t=session.beginTransaction();    //creating transaction
		
	//Session s=factory.openSession();
	//Transaction tx=s.beginTransaction();
	Query q=session.createQuery("delete from Adminaddbook where id=?0");
	q.setParameter(0, obj.id);
	q.executeUpdate();
	t.commit();
	session.close();
	}
	
	public List<Login>selectuser()
	{

		SessionFactory factory=new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Login.class).buildSessionFactory();
		/*creating factory object*/
		
		
			//Session session=factory.openSession();
			Session session=factory.getCurrentSession(); //creating a session
			Transaction t=session.beginTransaction();    //creating transaction
		Query q=session.createQuery("from Login");
		List<Login> li=q.list();
		return li;
	}
	
	public void deleteuser(Login obj)
	{

		SessionFactory factory=new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Login.class).buildSessionFactory();
		/*creating factory object*/
		
		
			//Session session=factory.openSession();
			Session session=factory.getCurrentSession(); //creating a session
			Transaction t=session.beginTransaction();    //creating transaction

	Query q=session.createQuery("delete from Login where id=?0");
	q.setParameter(0, obj.id);
	q.executeUpdate();
	t.commit();
	session.close();
	}
}