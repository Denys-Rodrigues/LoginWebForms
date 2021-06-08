using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginWebForms
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAcessar_Click(object sender, EventArgs e)
        {
            MySqlCommand cmd = new MySqlCommand();
            try
            {
                string usuario = txtUsuario.Text;
                string senha = txtSenha.Text;

                // Recuperar a senha do Usuário que está no Banco de Dados
                cmd.Connection = Conexao.Connection;
                cmd.CommandText = @"select senha
                                    from usuario
                                    where login = @usuario";

                cmd.Parameters.AddWithValue("@usuario", usuario);
                Conexao.Conectar();

                string senhaEncriptada = Convert.ToString(cmd.ExecuteScalar());

                if (string.IsNullOrEmpty(senhaEncriptada))
                {
                    throw new Exception("Usuário ou Senha Inválida");
                }

                if (BCrypt.Net.BCrypt.Verify(senha, senhaEncriptada))
                {
                    // Banco de Dados processa dois Selects (Demorado)
                    // Nivel
                    //cmd.CommandText = @"select nivel
                    //                    from usuario 
                    //                    where login = @login";
                    //cmd.Parameters.AddWithValue("@login", usuario);
                    //string nivel = Convert.ToString(cmd.ExecuteScalar());
                    
                    // Nome
                    //cmd.CommandText = @"select nome
                    //                    from usuario 
                    //                    where login = @login";
                    //cmd.Parameters.AddWithValue("@nome", usuario);
                    //string nome = Convert.ToString(cmd.ExecuteScalar());

                    // Banco de Dados processa somente um Select (Rápido)
                    cmd.CommandText = @"select nome, nivel
                                        from usuario 
                                        where login = @login";

                    cmd.Parameters.AddWithValue("@login", usuario);

                    var dr = cmd.ExecuteReader();

                    dr.Read();

                    string nome = dr.GetString("nome");
                    string nivel = dr.GetString("nivel");

                    // Fazer Redirecionamento
                    FormsAuthentication.RedirectFromLoginPage(nivel, false);

                    // Dados da Sessão
                    Session["Perfil"] = nivel;
                    Session["Nome"] = nome;
                }
                else
                {
                    throw new Exception("Usuário ou Senha Inválida");
                }
            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
            finally
            {
                Conexao.Desconectar();
            }
        }
    }
}