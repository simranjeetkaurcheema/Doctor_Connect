using System;
using System.Data.SqlClient;

namespace Doctor_connect
{
    internal class Sqlcommand
    {
        private string checkuser;
        private SqlConnection conn;

        public Sqlcommand(string checkuser, SqlConnection conn)
        {
            this.checkuser = checkuser;
            this.conn = conn;
        }

        internal object Executescalar()
        {
            throw new NotImplementedException();
        }

        internal object ExecuteScalar()
        {
            throw new NotImplementedException();
        }
    }
}