
using System;
using System.Collections.Generic;
using System.Data;

using Microsoft.Extensions.Configuration;
using System.Data.SqlClient;
using Cat.Service.Api.Model;

namespace Cat.Service.Api.DataLayer
{
    public class CatDal
    {
        readonly IConfiguration _iconfiguration;

        readonly SqlConnection conn = null;
        private readonly string _connectionString;

        public CatDal(string connectionString)
        {
            this._connectionString = connectionString;
            conn = new SqlConnection(connectionString);
        }
        public int VoteInsert(TVote ITEM)
        {
            try
            {
                SqlCommand cmd;
                cmd = new SqlCommand("vote_INSERT", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.Add(new SqlParameter("LostCatId", ITEM.LostCatId));
                cmd.Parameters.Add(new SqlParameter("WinCatId", ITEM.WinCatId));

                SqlParameter ret = new SqlParameter("RET", SqlDbType.Int)
                {
                    Direction = ParameterDirection.Output
                };

                cmd.Parameters.Add(ret);
                cmd.Connection.Open();
                cmd.ExecuteNonQuery();

                return Convert.ToInt32(ret.Value.ToString());
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
        }





        public List<TVote> VoteSelect(Int32? catid,int type)
        {
            SqlCommand cmd;
            cmd = new SqlCommand("Vote_SELECT", conn);

            DataSet ds = new DataSet();
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add(new SqlParameter("catid", catid));
            cmd.Parameters.Add(new SqlParameter("type", type));

            da.Fill(ds, "votes");
            List<TVote> LIST_RETURN = new List<TVote>();
            foreach (DataRow item in ds.Tables["votes"].Rows)
            {
                TVote _inv = new TVote
                {
                    VoteId = Convert.ToInt32(item["VoteId"]),
                    CreationDate = Convert.ToDateTime(item["creationdate"].ToString()),
                    WinCatId = Convert.ToInt32(item["WinCatId"]),
                    LostCatId = Convert.ToInt32(item["LostCatId"])
                };

                LIST_RETURN.Add(_inv);
            }
            return LIST_RETURN;

        }


        public List<Model.Cat> CatSelect(int? catid = null)
        {
            SqlCommand cmd;
            cmd = new SqlCommand("Cat_Select", conn);

            DataSet ds = new DataSet();
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.Add(new SqlParameter("catid", catid));

            da.Fill(ds, "cats");
            List<Model.Cat> LIST_RETURN = new List<Model.Cat>();
            foreach (DataRow item in ds.Tables["cats"].Rows)
            {
                Model.Cat _inv = new Model.Cat
                {
                    CatId = Convert.ToInt32(item["CatId"]),
                    Url = item["Url"].ToString(),
                    TVoteLostCat = VoteSelect(Convert.ToInt32(item["CatId"]), 1),
                    TVoteWinCat = VoteSelect(Convert.ToInt32(item["CatId"]), 2)
                };

                LIST_RETURN.Add(_inv);
            }
            return LIST_RETURN;

        }

        public List<Model.Cat> CatRandomSelect()
        {
            SqlCommand cmd;
            cmd = new SqlCommand("Cat_Random_Select", conn);

            DataSet ds = new DataSet();
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
           

            da.Fill(ds, "cats");
            List<Model.Cat> LIST_RETURN = new List<Model.Cat>();
            foreach (DataRow item in ds.Tables["cats"].Rows)
            {
                Model.Cat _inv = new Model.Cat
                {
                    CatId = Convert.ToInt32(item["CatId"]),
                    Url = item["Url"].ToString(),
                    TVoteLostCat = VoteSelect(Convert.ToInt32(item["CatId"]), 1),
                    TVoteWinCat = VoteSelect(Convert.ToInt32(item["CatId"]), 2)
                };

                LIST_RETURN.Add(_inv);
            }
            return LIST_RETURN;

        }
    }
}
