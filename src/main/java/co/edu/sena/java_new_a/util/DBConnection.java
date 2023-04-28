package co.edu.sena.java_new_a.util;

import org.apache.commons.dbcp2.BasicDataSource;

import java.sql.Connection;
import java.sql.SQLException;

public class DBConnection {





    private static final String URL = "jdbc:mysql://aws.connect.psdb.cloud/myapp?sslMode=VERIFY_IDENTITY";
    private static final String USER = "npp6le93nq2j3t9be6ek";
    private static final String PASS = "pscale_pw_xjIP8KcBL6ScG6TkuiNcM1af4k96FvGXZV0a2AHaRDw";

    private static BasicDataSource pool;

    private DBConnection() {}

    private static BasicDataSource getInstance() {
        if (pool == null) {
            pool = new BasicDataSource();
            pool.setUrl(URL);
            pool.setUsername(USER);
            pool.setPassword(PASS);
            pool.setInitialSize(3);
            pool.setMinIdle(3);
            pool.setMaxIdle(8);
            pool.setMaxTotal(8);
        }
        return pool;
    }

    public static Connection getConnection() throws SQLException {
        return getInstance().getConnection();
    }
}
