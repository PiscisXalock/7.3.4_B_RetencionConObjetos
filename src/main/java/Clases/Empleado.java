/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

/**
 *
 * @author DAW-A
 */
public class Empleado {

    private double salario, retencion, salarioNeto;

    public Empleado() {
    }

    public void setSalario(double salario) {
        this.salario = salario;
        this.salario = salario;
        if (salario < 1000) {
            this.retencion = 0;
        } else if (salario >= 1000 && salario < 3000) {
            this.retencion = 10;
        } else if (salario >= 3000) {
            this.retencion = 20;
        }
        this.salarioNeto = (((retencion * salario) / 100) - salario);
    }

    public double getSalario() {
        return salario;
    }

    public double getRetencion() {
        return retencion;
    }

    public double getSalarioNeto() {
        return salarioNeto;
    }

}
