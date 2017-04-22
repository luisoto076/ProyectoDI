/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import Mapeo.Estudiante;

/**
 *
 * @author luis
 */
public class EstudianteDAO {
    
    private SessionFactory sessionFactory;
    
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    
    /**
     * Método que guarda una estudiante en la base de datos
     * @param estudiante 
     */
    public void guardar(Estudiante estudiante) {
    
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
           tx = session.beginTransaction();
         
           session.persist(estudiante);
           
           tx.commit();
        }
        catch (Exception e) {
           if (tx!=null){ 
               tx.rollback();
           }
           e.printStackTrace(); 
        }finally {
           session.close();
        }
    
    }
    
    /**
     * Método que actualiza a una estudiante en la base de datos
     * @param estudiante 
     */
    public void actualizar(Estudiante estudiante) {
    
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
           tx = session.beginTransaction();
         
           session.update(estudiante);
           
           tx.commit();
        }
        catch (Exception e) {
           if (tx!=null){ 
               tx.rollback();
           }
           e.printStackTrace(); 
        }finally {
           session.close();
        }
    
    }
    
    /**
     * Método que elimina a una estudiante de la base de datos
     * @param estudiante 
     */
    public void eliminar(Estudiante estudiante) {
    
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
           tx = session.beginTransaction();
         
           session.delete(estudiante);
           
           tx.commit();
        }
        catch (Exception e) {
           if (tx!=null){ 
               tx.rollback();
           }
           e.printStackTrace(); 
        }finally {
           session.close();
        }
    
    }
    /**
     * Método que regresa a una estudiante, cuyo id es el que se pasa como 
     * parámetro
     * @param idEstudiante
     * @return 
     */
    public Estudiante getEstudiante(long idEstudiante) {
        Estudiante estudiante = null;
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
           tx = session.beginTransaction();
           estudiante = (Estudiante)session.get(Estudiante.class, idEstudiante);
           tx.commit();
        }
        catch (Exception e) {
           if (tx!=null){ 
               tx.rollback();
           }
           e.printStackTrace(); 
        }finally {
           session.close();
        }
        return estudiante;
    }
    
    
}
