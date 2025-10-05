import java.sql.*;
import java.util.Scanner;

public class DatabaseApp {
    private static final String URL = "jdbc:mysql://localhost:3306/userDB";
    private static final String USER = "root";       // replace with your DB user
    private static final String PASS = "yourpassword"; // replace with your DB password

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        try (Connection conn = DriverManager.getConnection(URL, USER, PASS)) {
            System.out.println("Connected to Database!");

            while (true) {
                System.out.println("\n1. Add User\n2. Display Users\n3. Delete User\n4. Exit");
                int choice = sc.nextInt();
                sc.nextLine(); // consume newline

                if (choice == 1) {
                    System.out.print("Enter Name: ");
                    String name = sc.nextLine();
                    System.out.print("Enter Address: ");
                    String address = sc.nextLine();
                    System.out.print("Enter Contact: ");
                    String contact = sc.nextLine();

                    String sql = "INSERT INTO users(name, address, contact) VALUES (?, ?, ?)";
                    PreparedStatement stmt = conn.prepareStatement(sql);
                    stmt.setString(1, name);
                    stmt.setString(2, address);
                    stmt.setString(3, contact);
                    stmt.executeUpdate();
                    System.out.println("User Added!");

                } else if (choice == 2) {
                    Statement stmt = conn.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM users");
                    while (rs.next()) {
                        System.out.println(rs.getInt("id") + " | " +
                                           rs.getString("name") + " | " +
                                           rs.getString("address") + " | " +
                                           rs.getString("contact"));
                    }

                } else if (choice == 3) {
                    System.out.print("Enter User ID to delete: ");
                    int id = sc.nextInt();
                    String sql = "DELETE FROM users WHERE id = ?";
                    PreparedStatement stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, id);
                    int rows = stmt.executeUpdate();
                    if (rows > 0) {
                        System.out.println("User deleted!");
                    } else {
                        System.out.println("No user found with that ID.");
                    }

                } else {
                    System.out.println("Exiting...");
                    break;
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
