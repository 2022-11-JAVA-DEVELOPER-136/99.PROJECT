package com.itwill.util;



import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JButton;
import javax.swing.JTextField;
import javax.swing.JScrollPane;
import javax.swing.JEditorPane;
import javax.swing.JTextArea;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.awt.Font;
import javax.swing.JRadioButton;

public class QueryString extends JFrame {

	private JPanel contentPane;
	private JTextField TF2;
	private JTextField TF1;
	private JTextArea TA1;
	/**
	 * @wbp.nonvisual location=111,499
	 */
	private final JTextArea hiddenTA = new JTextArea();
	private JRadioButton rb1;
	private JRadioButton rb2;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					QueryString frame = new QueryString();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public QueryString() {
		setTitle("\uCF54\uB529\uC6A9\uCFFC\uB9AC\uB9CC\uB4E4\uAE30");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 789, 647);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		contentPane.setLayout(new BorderLayout(0, 0));
		setContentPane(contentPane);
		
		JPanel panel = new JPanel();
		contentPane.add(panel, BorderLayout.SOUTH);
		
		rb1 = new JRadioButton("Query");
		rb1.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				if (rb2.isSelected()) {
					rb2.setSelected(false);
					rb1.setSelected(true);
					TF1.setText("String qry = ");
					TF2.setText("qry +=");
				}
			}
		});
		rb1.setSelected(true);
		panel.add(rb1);
		
		rb2 = new JRadioButton("Servlet Out");
		rb2.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				if (rb1.isSelected()) {
					rb2.setSelected(true);
					rb1.setSelected(false);
					TF1.setText("out.println(\"");
					TF2.setText("\");");
				}
			}
		});
		panel.add(rb2);
		
		TF1 = new JTextField();
		TF1.setText("String qry = ");
		panel.add(TF1);
		TF1.setColumns(20);
		
		TF2 = new JTextField();
		TF2.setText("qry +=");
		panel.add(TF2);
		TF2.setColumns(20);
		
		JButton btnConvert = new JButton("Convert");
		btnConvert.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
			String sqlStr = TA1.getText();
			String lineStr;
			int startIdx = 0;
			int currentIdx = 0;
			hiddenTA.setText("");
			while(true) {
				if(rb1.isSelected()) {
					if (startIdx == 0) {
						lineStr = TF1.getText();
					} else {
						lineStr = TF2.getText();
					}
					
					currentIdx = sqlStr.indexOf("\n", startIdx);
//					System.out.println(startIdx);
//					System.out.println(currentIdx);
					if (currentIdx<=0) {
						lineStr += "\"" + sqlStr.substring(startIdx, sqlStr.length()) + "\";\n";
						hiddenTA.append(lineStr);
						break;
					} else {
						lineStr += "\"" + sqlStr.substring(startIdx, currentIdx) + "\";\n";
						hiddenTA.append(lineStr);
						startIdx = currentIdx+1;
						currentIdx=0;
					}
				} else {
					//���� ��¹� �����
					currentIdx = sqlStr.indexOf("\n", startIdx);
					System.out.println(startIdx);
					System.out.println(currentIdx);
					
					if (currentIdx<=0) {
						lineStr = TF1.getText() + sqlStr.substring(startIdx, sqlStr.length()).replace('\"', '\'') + TF2.getText() +"\n";
						hiddenTA.append(lineStr);
						break;
					} else {
						lineStr = TF1.getText() + sqlStr.substring(startIdx, currentIdx).replace('\"', '\'') + TF2.getText() +"\n";
						hiddenTA.append(lineStr);
						startIdx = currentIdx+1;
						currentIdx=0;
					}
				}
				
			}
			

				TA1.setText(hiddenTA.getText());
			}
		});
		panel.add(btnConvert);
		
		JScrollPane scrollPane = new JScrollPane();
		contentPane.add(scrollPane, BorderLayout.CENTER);
		
		TA1 = new JTextArea();
		TA1.setFont(new Font("������", Font.PLAIN, 13));
		scrollPane.setViewportView(TA1);
	}

}
