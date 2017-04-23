/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import Mapeo.Alumno;

/**
 *
 * @author luis
 */
public class AlumnoDAO {
    
    private SessionFactory sessionFactory;
    
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    
    /**
     * Método que guarda una alumno en la base de datos
     * @param alumno 
     */
    public void guardar(Alumno alumno) {
    
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
           tx = session.beginTransaction();
         
           session.persist(alumno);
           
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
     * Método que actualiza a una alumno en la base de datos
     * @param alumno 
     */
    public void actualizar(Alumno alumno) {
    
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
           tx = session.beginTransaction();
         
           session.update(alumno);
           
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
     * Método que elimina a una alumno de la base de datos
     * @param alumno 
     */
    public void eliminar(Alumno alumno) {
    
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
           tx = session.beginTransaction();
         
           session.delete(alumno);
           
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
     * Método que regresa a una alumno, cuyo id es el que se pasa como 
     * parámetro
     * @param idAlumno
     * @return 
     */
    public Alumno getAlumno(long idAlumno) {
        Alumno alumno = null;
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
           tx = session.beginTransaction();
           alumno = (Alumno)session.get(Alumno.class, idAlumno);
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
        return alumno;
    }
    
    
}
