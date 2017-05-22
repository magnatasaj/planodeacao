/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.interativaconsultoria.funcao;

import java.math.BigDecimal;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.Locale;

/**
 *
 * @author Lamara
 */
public class Valor {

    public static String FormatarValor(BigDecimal v) throws ParseException {
        BigDecimal bd = new BigDecimal (v.toString());
        Locale ptBr = new Locale( "pt" , "BR" );
NumberFormat nf;
        nf = NumberFormat.getCurrencyInstance(ptBr);
    
String s = nf.format (bd); // deve mostrar "R$ 12,34"

        return s;
    }

}
