import 'package:demosih/src/routing/application.dart';
import 'package:flutter/material.dart';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pdf;
import 'package:printing/printing.dart';

class AdmitCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pdf"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.print),
        tooltip: 'Print Document',
        onPressed: () {
          Printing.layoutPdf(
            onLayout: buildPdf,
          );
        },
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
                child: Text("Back"),
                onPressed: () {
                  Application.router.pop(context);
                }),
            Text('Click on the print button below'),
          ],
        ),
      ),
    );
  }

  List<int> buildPdf(PdfPageFormat format) {
    pdf.TextStyle textstyle = pdf.TextStyle(fontSize: 20);
    final pdf.Document doc = pdf.Document();

    doc.addPage(
      pdf.Page(
        pageFormat: format,
        build: (pdf.Context context) {
          return pdf.Container(
              margin: pdf.EdgeInsets.all(30),
              padding: pdf.EdgeInsets.all(30),
              decoration: pdf.BoxDecoration(
                  border: pdf.BoxBorder(
                      width: 4.0,
                      color: PdfColors.black,
                      top: true,
                      bottom: true,
                      left: true,
                      right: true)),
              child: pdf.Column(children: <pdf.Widget>[
          
                pdf.Text("STET Admit Card",style:pdf.TextStyle(fontSize: 40)),
                pdf.SizedBox(height: 40),
                  pdf.Column(children: <pdf.Widget>[
                    pdf.Row(children: <pdf.Widget>[
                      pdf.Text("Application No :", style: textstyle),
                      pdf.Text("2020019100001", style: textstyle)
                    ]),
                    pdf.Row(children: <pdf.Widget>[
                      pdf.Text("Name :", style: textstyle),
                      pdf.Text("Sumit Singh", style: textstyle)
                    ]),
                    pdf.Row(children: <pdf.Widget>[
                      pdf.Text("Center Code :", style: textstyle),
                      pdf.Text("1506", style: textstyle)
                    ]),
                    pdf.Row(children: <pdf.Widget>[
                      pdf.Text("Center Name :", style: textstyle),
                      pdf.Text("Sardar Vallabh bhai patel school",
                          style: textstyle)
                    ]),
                    pdf.Row(children: <pdf.Widget>[
                      pdf.Text("Center Address :", style: textstyle),
                      pdf.Text("Tugalkabad Delhi 110019", style: textstyle)
                    ]),
                  ]),
              
              ]));
        },
      ),
    );

    return doc.save();
  }
}
