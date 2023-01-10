package negocios;
import java.io.*;
import java.util.ArrayList;

public class LeeArchivo {
    private static int cont = 0;
    private static File archivo;
    private  static FileReader fr;
    private static  BufferedReader br;
    static ArrayList<Alumno> alumnos = new ArrayList<Alumno>();
    public static ArrayList<Alumno> leeAlumnos(String path){
        try {
            archivo = new File(path);
            fr = new FileReader(archivo);
            br = new BufferedReader(fr);
            String linea = null;
            String[] tokensLinea = null;
            String nombre;
            String apellido;
            Double promedio;
            Alumno alumno;
            linea = br.readLine();
            while ( linea!=null){
                tokensLinea = linea.split(",");
                nombre = tokensLinea[0];
                apellido = tokensLinea[1];
                promedio = Double.parseDouble(tokensLinea[2]);
                alumno = new Alumno(nombre, apellido, promedio);
                alumnos.add(alumno);
                cont++;
                linea = br.readLine();
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally {
            try{
                if (null != fr){
                    fr.close();
                }
            }catch (Exception e2){
                e2.printStackTrace();
            }
        }
        return alumnos;
    }
    public static int getCont(){
        return cont;
    }
    public static void clearCont(){
        cont=0;
    }
}