package com.bosch.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.bosch.project.bean.Product;
import com.bosch.project.bean.Registration;

@Repository("loginDAO")
public class ProductDAOImpl implements ProductDAO {

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void insert(Product product) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();

		try {
			tx = session.getTransaction();
			tx.begin();
			session.save(product);
			// employee = (Employee)query.uniqueResult();
			tx.commit();
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			session.close();
		}
		
	}

	public void updateProduct(Product product) {

		
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction(); 
		  
        try {
            tx = session.getTransaction();
            tx.begin();
          session.update(product);
          
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
		
	}
		
	

	public void delete(Product product) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = null;

		try {
			tx = session.getTransaction();
			tx.begin();
			session.delete(product);
			
			tx.commit();
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			session.close();
		}
		
	}

	public List<Product> view() {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		 List<Product> pdtList=new ArrayList();
         try {
             tx = session.getTransaction();
             tx.begin();
             Query query = session.createQuery("from Product");
              pdtList = query.list();
              System.out.println("pdtList "+pdtList);
             tx.commit();
         } catch (Exception e) {
             if (tx != null) {
                 tx.rollback();
             }
             e.printStackTrace();
         } finally {
             session.close();
         }
		return pdtList;
	}

	public Product getProduct(long productId) {
		Product product=null;
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction(); 
           try {
               tx = session.getTransaction();
               tx.begin();
               Query query = session.createQuery(" from Product where id='"+productId+"'");
               product= (Product)query.uniqueResult();
               tx.commit();
           } catch (Exception e) {
               if (tx != null) {
                   tx.rollback();
               }
               e.printStackTrace();
           } finally {
               session.close();
           }
           return product; 
	}

	public boolean checkLogin(String userName, String Password) {
		System.out.println("In Check login");
		Session session = sessionFactory.openSession();
		boolean userFound = false;
		//Query using Hibernate Query Language
		String SQL_QUERY =" from Registration_Table as o where o.userName=? and o.Password=?";
		Query query = session.createQuery(SQL_QUERY);
		query.setParameter(0,userName);
		query.setParameter(1,Password);
		List list = query.list();

		if ((list != null) && (list.size() > 0)) {
			userFound= true;
		}

		session.close();
		return userFound;              
   
		
	}

	public void registrationInsert(Registration regis) {
		
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();

		try {
			tx = session.getTransaction();
			tx.begin();
			session.save(regis);
			// employee = (Employee)query.uniqueResult();
			tx.commit();
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			session.close();
		}
	}

}
