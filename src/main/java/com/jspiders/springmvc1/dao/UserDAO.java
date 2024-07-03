
package com.jspiders.springmvc1.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Component;

import com.jspiders.springmvc1.dto.UserDTO;

@Component
public class UserDAO {

	private EntityManagerFactory entityManagerFactory;
	private EntityManager entityManager;
	private EntityTransaction entityTransaction;

	private void openConnection() {
		entityManagerFactory = Persistence.createEntityManagerFactory("contact_manager");
		entityManager = entityManagerFactory.createEntityManager();
		entityTransaction = entityManager.getTransaction();
	}

	private void closeConnection() {
		if (entityManagerFactory != null) {
			entityManagerFactory.close();
		}
		if (entityManager != null) {
			entityManager.close();
		}
		if (entityTransaction != null) {
			if (entityTransaction.isActive()) {
				entityTransaction.rollback();
			}
		}
	}

	public void addUser(UserDTO userDTO) {
		openConnection();
		 try {
	            entityTransaction.begin();
	            entityManager.persist(userDTO);
	            entityTransaction.commit();
//	            System.out.println("User persisted: " + userDTO.getEmail());
	        } catch (Exception e) {
//	            System.err.println("Error during addUser: " + e.getMessage());
	            e.printStackTrace();
	            entityTransaction.rollback();
	        } finally {
	            closeConnection();
	        }
	    }
//		entityTransaction.begin();
//		entityManager.persist(userDTO);
//		entityTransaction.commit();
//		closeConnection();
//	}

	public UserDTO findUserByEmailAndPassword(String email, String password) {
		openConnection();
		 try {
	            Query query = entityManager.createQuery("SELECT user FROM UserDTO user WHERE email = :email AND password = :password");
	            query.setParameter("email", email);
	            query.setParameter("password", password);
	            UserDTO user = (UserDTO) query.getSingleResult();
	            return user;
	        } catch (Exception e) {
//	            System.err.println("Error during findUserByEmailAndPassword: " + e.getMessage());
	            e.printStackTrace();
	            return null;
	        } finally {
	            closeConnection();
	        }
	    }
//		Query query = entityManager.createQuery("SELECT user FROM UserDTO user WHERE email = ?1 AND password = ?2");
//		query.setParameter(1, email);
//		query.setParameter(2, password);
//		UserDTO user = (UserDTO) query.getSingleResult();
//		closeConnection();
//		return user;
//	}

	public UserDTO deleteUser(int id) {
		openConnection();
		UserDTO user = (UserDTO) entityManager.find(UserDTO.class, id);
		if (user != null) {
            try {
                entityTransaction.begin();
                entityManager.remove(user);
                entityTransaction.commit();
                System.out.println("User deleted: " + id);
            } catch (Exception e) {
                System.err.println("Error during deleteUser: " + e.getMessage());
                e.printStackTrace();
                entityTransaction.rollback();
            } finally {
                closeConnection();
            }
        }
        return user;
    }
//		if (user != null) {
//			entityTransaction.begin();
//			entityManager.remove(user);
//			entityTransaction.commit();
//		}
//		return user;
//	}

}