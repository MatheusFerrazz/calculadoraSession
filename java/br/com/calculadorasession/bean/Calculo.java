
package br.com.calculadorasession.bean;

import java.io.Serializable;


/**
 *
 * @author Matheus
 */
public class Calculo implements Serializable{
    private double numero1;
    private double numero2;
    private char operacao='+';
    private double resultado;

    public Calculo() {
        
    }

    public double getNumero1() {
        return numero1;
    }

    public void setNumero1(double numero1) {
        this.numero1 = numero1;
    }

    public double getNumero2() {
        return numero2;
    }

    public void setNumero2(double numero2) {
        this.numero2 = numero2;
    }

    public char getOperacao() {
        return operacao;
    }

    public void setOperacao(char operacao) {
        this.operacao = operacao;
    }

    public double getResultado() {
        return resultado;
    }

    public void setResultado(double resultado) {
        this.resultado = resultado;
    }
    
    public void Calculando(){
        switch(this.operacao){
            case'+':{
                 this.resultado = this.numero1 + this.numero2;
                 break;
            }
            case'-':{
                  this.resultado = this.numero1 - this.numero2;
                  break;
            }
            case'*':{
                  this.resultado = this.numero1 * this.numero2;
                 break;
            }
            case'/':{
                  this.resultado = this.numero1 / this.numero2;
                break;
            }
            default:{
                  throw new RuntimeException("Desculpe, entrada inválida!!");
            }
            
        }
        
        
    }
     
    
    
    
    
}
