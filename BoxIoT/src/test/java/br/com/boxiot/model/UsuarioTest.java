package br.com.boxiot.model;

import br.com.boxiot.util.Uteis;
import junit.framework.TestCase;
import org.junit.Test;

public class UsuarioTest extends TestCase {

    private Usuario usuario;

    public UsuarioTest(String testName) {
        super(testName);
    }

    @Override
    protected void setUp() throws Exception {
        usuario = new Usuario();
    }

    @Override
    protected void tearDown() throws Exception {
        super.tearDown();
    }

    @Test
    public void testEmailValido() {
        usuario.setEmail("fulano@gmail.com");
        assertEquals(Uteis.validarEmail(usuario.getEmail()), true);

        usuario.setEmail("fulano2018@hotmail.com.br");
        assertEquals(Uteis.validarEmail(usuario.getEmail()), true);

        usuario.setEmail("fulano_de_tal@outlook.com");
        assertEquals(Uteis.validarEmail(usuario.getEmail()), true);
    }

    @Test
    public void testEmailInvalido() {
        usuario.setEmail("fulanogmail.com");
        assertEquals(Uteis.validarEmail(usuario.getEmail()), false);

        usuario.setEmail("fulano@gmail");
        assertEquals(Uteis.validarEmail(usuario.getEmail()), false);

        usuario.setEmail("fulano.gmail@com");
        assertEquals(Uteis.validarEmail(usuario.getEmail()), false);
    }

    @Test
    public void testConfirmacaoSenhaValido() {
        usuario.setSenha("teste123");
        String confirmacao = "teste123";
        assertEquals(Uteis.validarConfirmacaoSenha(usuario.getSenha(), confirmacao), true);

        usuario.setSenha("fulano");
        confirmacao = "fulano";
        assertEquals(Uteis.validarConfirmacaoSenha(usuario.getSenha(), confirmacao), true);

        usuario.setSenha("123456");
        confirmacao = "123456";
        assertEquals(Uteis.validarConfirmacaoSenha(usuario.getSenha(), confirmacao), true);
    }

    @Test
    public void testConfirmacaoSenhaInvalido() {
        usuario.setSenha("teste123");
        String confirmacao = "teste";
        assertEquals(Uteis.validarConfirmacaoSenha(usuario.getSenha(), confirmacao), false);

        usuario.setSenha("fulano2018");
        confirmacao = "fulano18";
        assertEquals(Uteis.validarConfirmacaoSenha(usuario.getSenha(), confirmacao), false);

        usuario.setSenha("123456789");
        confirmacao = "123456789";
        assertEquals(Uteis.validarConfirmacaoSenha(usuario.getSenha(), confirmacao), false);
    }

}
