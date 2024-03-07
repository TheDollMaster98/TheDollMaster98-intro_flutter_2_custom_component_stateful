import 'package:flutter/material.dart';

// HomePage è un StatefulWidget, il che significa che ha uno stato che può cambiare nel tempo.
class HomePage extends StatefulWidget {
  // Questo è il valore che stai passando al tuo widget HomePage.
  final int value;
  const HomePage(this.value);

  // Creiamo una nuova istanza di HomePageState ogni volta che Flutter decide di ricreare il widget HomePage.
  @override
  State<StatefulWidget> createState() => HomePageState();
}

// Questo è lo stato del tuo widget HomePage. Può cambiare nel tempo, per esempio a causa di interazioni dell'utente.
class HomePageState extends State<HomePage> {
  // Variabile che stai utilizzando nel tuo stato.
  // Ottieni dal widget HomePage quando viene inizializzato.
  late int value;

  // initState è il primo metodo chiamato dopo che il widget è stato creato.
  // È chiamato solo una volta per la vita del widget.
  @override
  void initState() {
    // Qui stai assegnando il valore che hai ottenuto dal widget HomePage alla tua variabile 'value'.
    value = widget.value;
    super.initState();
  }

  // Metodo build. È chiamato ogni volta che Flutter decide di ridisegnare il tuo widget.
  @override
  Widget build(BuildContext context) {
    // Stai utilizzando il widget Scaffold per creare la struttura di base dell'app.
    // Nel corpo dello Scaffold, stai visualizzando un testo al centro dello schermo.
    return Scaffold(
        body: Center(
          child: Text("Valore tramite initState: ${widget.value}", style: TextStyle(
              fontSize: 30
          ),
          ),
        )
    );
  }
}
