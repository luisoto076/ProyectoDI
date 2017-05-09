/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Mapeo.Alumno;
import Mapeo.Grupo;
import Mapeo.Inscripcion;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Dadmy
 */
public class InscripcionDAO {
    
    private SessionFactory sessionFactory;
    
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    
    /**
     * Método que guarda una inscripcion en la base de datos
     * @param inscripcion 
     */
    public void guardar(Inscripcion inscripcion) {
    
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
           tx = session.beginTransaction();
         
           session.persist(inscripcion);
           
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
     * Método que actualiza a una inscripcion en la base de datos
     * @param inscripcion 
     */
    public void actualizar(Inscripcion inscripcion) {
    
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
           tx = session.beginTransaction();
         
           session.update(inscripcion);
           
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
     * Método que elimina a una inscripcion de la base de datos
     * @param inscripcion 
     */
    public void eliminar(Inscripcion inscripcion) {
    
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
           tx = session.beginTransaction();
         
           session.delete(inscripcion);
           
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
     * Método que regresa a una inscripcion, cuyo id es el que se pasa como 
     * parámetro
     * @param idInscripcion
     * @return 
     */
    public Inscripcion getInscripcion(long idInscripcion) {
        Inscripcion inscripcion = null;
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
           tx = session.beginTransaction();
           inscripcion = (Inscripcion)session.get(Inscripcion.class, idInscripcion);
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
        return inscripcion;
    }
    
    public List<Inscripcion> inscripciones(long idEstudiante) {
        List<Inscripcion> result = null;
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            String hql = "From Inscripcion i WHERE i.estudiante.idEstudiante =:idestudiante)";
            Query query = session.createQuery(hql);
            query.setParameter("idestudiante", idEstudiante);
            result = (List<Inscripcion>)query.list();
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
        return result;
    }
    
    /**
     * cambiar de archivo
     */
    public Alumno getAlumno(String cuenta) {
        Alumno result = null;
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            String hql = "From Alumno a WHERE a.cuenta =:cuenta)";
            Query query = session.createQuery(hql);
            query.setParameter("cuenta", cuenta);
            result = (Alumno)query.uniqueResult();
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
        return result;
    }
    
}
