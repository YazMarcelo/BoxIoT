package br.com.boxiot.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Uteis {

    public static boolean validarEmail(String email) {
        boolean emailValido = false;
        if (email != null && email.length() > 0) {
            String expression = "^[\\w\\.-]+@([\\w\\-]+\\.)+[A-Z]{2,4}$";
            Pattern pattern = Pattern.compile(expression, Pattern.CASE_INSENSITIVE);
            Matcher matcher = pattern.matcher(email);
            if (matcher.matches()) {
                emailValido = true;
            }
        }
        return emailValido;
    }
    
    public static boolean validarConfirmacaoSenha(String senha, String senhaConfirmacao) {
        if ((senha.trim().length() < 1 || senha.trim().length() > 8)
                || (senhaConfirmacao.trim().length() < 1 || senha.trim().length() > 8)) {
            return false;
        }
        return senha.equalsIgnoreCase(senhaConfirmacao);
    }

}
