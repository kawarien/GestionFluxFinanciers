/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package lesInterfacesGraphiques;

/**
 *
 * @author PC
 */
public abstract class Application extends javax.swing.JFrame {

    /** Creates new form Application */
    public Application() {
        initComponents();
    }

    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Application");
        setLocation(new java.awt.Point(100, 5));
        setMinimumSize(new java.awt.Dimension(1190, 690));
        setUndecorated(true);
        setPreferredSize(new java.awt.Dimension(1190, 690));
        setResizable(false);
        getContentPane().setLayout(null);

        jLabel1.setMaximumSize(new java.awt.Dimension(1190, 690));
        jLabel1.setMinimumSize(new java.awt.Dimension(1190, 690));
        getContentPane().add(jLabel1);
        jLabel1.setBounds(0, 0, 0, 0);

        pack();
    }// </editor-fold>//GEN-END:initComponents


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    // End of variables declaration//GEN-END:variables
}
