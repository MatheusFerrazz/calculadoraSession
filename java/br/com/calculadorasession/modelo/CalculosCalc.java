/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.calculadorasession.modelo;


/**
 *
 * @author Matheus
 */


public class CalculosCalc {
    private double op1;
    private double op2;
    private double operacao;
    private double resultado;

    public CalculosCalc() {
    
    }
    
    public static double Somar(double op1, double op2){
        return op1 + op2;
    }
    
    public static double Subtrair(double op1, double op2){
        return op1 - op2;
    }
    
    public static double Multiplicar(double op1, double op2){
        return op1 * op2;
    }
    
    public static double Dividir(double op1, double op2){
        return op1 / op2;
    }
    public double getOp1() {
        return op1;
    }

    public void setOp1(double op1) {
        this.op1 = op1;
    }

    public double getOp2() {
        return op2;
    }

    public void setOp2(double op2) {
        this.op2 = op2;
    }

    public double getOperacao() {
        return operacao;
    }

    public void setOperacao(double operacao) {
        this.operacao = operacao;
    }

    public double getResultado() {
        return resultado;
    }

    public void setResultado(double resultado) {
        this.resultado = resultado;
    }     
}