/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pkg540project;

/**
 *
 * @author Goutham
 */
public class publicationsForm extends javax.swing.JFrame {

    /**
     * Creates new form publicationsForm
     */
    public publicationsForm() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        publicationsGroup = new javax.swing.ButtonGroup();
        libraryPublicationsLabel = new javax.swing.JLabel();
        booksButton = new javax.swing.JRadioButton();
        journalsButton = new javax.swing.JRadioButton();
        conferencePapersButton = new javax.swing.JRadioButton();
        catalogLabel = new javax.swing.JLabel();
        publicationsListPane = new javax.swing.JScrollPane();
        publicationsList = new javax.swing.JList();
        detailsLabel = new javax.swing.JLabel();
        publicationDetailsPane = new javax.swing.JScrollPane();
        publicationsDetails = new javax.swing.JTextArea();
        checkoutTimeLabel = new javax.swing.JLabel();
        returnTimeLabel = new javax.swing.JLabel();
        checkoutTimeField = new javax.swing.JTextField();
        returnTimeField = new javax.swing.JTextField();
        checkOutButton = new javax.swing.JButton();
        backButton = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        libraryPublicationsLabel.setText("Library Publications");

        publicationsGroup.add(booksButton);
        booksButton.setText("Books");
        booksButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                booksButtonActionPerformed(evt);
            }
        });

        publicationsGroup.add(journalsButton);
        journalsButton.setText("Journals");

        publicationsGroup.add(conferencePapersButton);
        conferencePapersButton.setText("Conference Papers");

        catalogLabel.setText("Catalog");

        publicationsList.setModel(new javax.swing.AbstractListModel() {
            String[] strings = { "Item 1", "Item 2", "Item 3", "Item 4", "Item 5" };
            public int getSize() { return strings.length; }
            public Object getElementAt(int i) { return strings[i]; }
        });
        publicationsListPane.setViewportView(publicationsList);

        detailsLabel.setText("Details");

        publicationsDetails.setEditable(false);
        publicationsDetails.setColumns(20);
        publicationsDetails.setRows(5);
        publicationDetailsPane.setViewportView(publicationsDetails);

        checkoutTimeLabel.setText("Checkout Time:");

        returnTimeLabel.setText("Return Time:");

        checkoutTimeField.setEditable(false);

        returnTimeField.setEditable(false);

        checkOutButton.setText("Checkout");
        checkOutButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                checkOutButtonActionPerformed(evt);
            }
        });

        backButton.setText("Back");
        backButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                backButtonActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(69, 69, 69)
                .addComponent(catalogLabel)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(detailsLabel)
                .addGap(138, 138, 138))
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(publicationsListPane, javax.swing.GroupLayout.PREFERRED_SIZE, 189, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(41, 41, 41)
                .addComponent(publicationDetailsPane, javax.swing.GroupLayout.DEFAULT_SIZE, 309, Short.MAX_VALUE))
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(156, 156, 156)
                        .addComponent(libraryPublicationsLabel))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(24, 24, 24)
                        .addComponent(booksButton)
                        .addGap(29, 29, 29)
                        .addComponent(journalsButton)
                        .addGap(26, 26, 26)
                        .addComponent(conferencePapersButton))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(107, 107, 107)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(checkoutTimeLabel)
                            .addComponent(returnTimeLabel))
                        .addGap(35, 35, 35)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(checkoutTimeField)
                            .addComponent(returnTimeField, javax.swing.GroupLayout.DEFAULT_SIZE, 97, Short.MAX_VALUE)))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(184, 184, 184)
                        .addComponent(checkOutButton)
                        .addGap(18, 18, 18)
                        .addComponent(backButton)))
                .addContainerGap(215, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(libraryPublicationsLabel)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(booksButton)
                    .addComponent(journalsButton)
                    .addComponent(conferencePapersButton))
                .addGap(29, 29, 29)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(catalogLabel)
                            .addComponent(detailsLabel))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(publicationsListPane, javax.swing.GroupLayout.DEFAULT_SIZE, 143, Short.MAX_VALUE)
                            .addComponent(publicationDetailsPane))
                        .addGap(35, 35, 35)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(checkoutTimeLabel)
                            .addComponent(checkoutTimeField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(returnTimeLabel))
                    .addComponent(returnTimeField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 21, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(checkOutButton)
                    .addComponent(backButton)))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void checkOutButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_checkOutButtonActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_checkOutButtonActionPerformed

    private void booksButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_booksButtonActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_booksButtonActionPerformed

    private void backButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_backButtonActionPerformed
        this.hide();
        new resourcesForm().show();
    }//GEN-LAST:event_backButtonActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(publicationsForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(publicationsForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(publicationsForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(publicationsForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new publicationsForm().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton backButton;
    private javax.swing.JRadioButton booksButton;
    private javax.swing.JLabel catalogLabel;
    private javax.swing.JButton checkOutButton;
    private javax.swing.JTextField checkoutTimeField;
    private javax.swing.JLabel checkoutTimeLabel;
    private javax.swing.JRadioButton conferencePapersButton;
    private javax.swing.JLabel detailsLabel;
    private javax.swing.JRadioButton journalsButton;
    private javax.swing.JLabel libraryPublicationsLabel;
    private javax.swing.JScrollPane publicationDetailsPane;
    private javax.swing.JTextArea publicationsDetails;
    private javax.swing.ButtonGroup publicationsGroup;
    private javax.swing.JList publicationsList;
    private javax.swing.JScrollPane publicationsListPane;
    private javax.swing.JTextField returnTimeField;
    private javax.swing.JLabel returnTimeLabel;
    // End of variables declaration//GEN-END:variables
}
