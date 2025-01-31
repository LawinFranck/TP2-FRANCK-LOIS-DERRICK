import 'package:flutter/material.dart';
import 'dart:convert';


// création de la classe Client
class Client {
  String nom;
  String prenom;

  Client({required this.nom, required this.prenom});

  get categorie => null;

  // Implémentation d'une méthode qui retourne un json
  Map<String, String> toJson() {
    return {
      'nom': nom,
      'prenom': prenom,
    };
  }

  // Implémentation d'une méthode qui prend en paramètre un json et retourne un objet de classe
  static Client fromJson(Map<String, dynamic> json) {
    return Client(
        nom: json['nom'],
        prenom: json['prenom']
    );
  }
    }

void main() {
  // Création d'un objet Client
  Client client = Client(nom: 'DAGAN', prenom: 'LAWIN FRANCK');

  // Conversion de l'objet Client en JSON
  String jsonString = jsonEncode(client.toJson());
  print('Client en JSON: $jsonString');

  // Conversion du JSON en objet Client
  Map<String, dynamic> jsonMap = jsonDecode(jsonString);
  Client clientFromJson = Client.fromJson(jsonMap);
  print('Client à partir du JSON: ${clientFromJson.nom} ${clientFromJson
      .prenom}');


//2- création d'une liste de 10 catégories.
  List<String> listcategories = [ 'INCOLABLE', 'VIP', 'BOSS', 'SUPER',
    'MOYEN', 'CLASSE', 'AVANCE', 'BASSE',
    'INTERMEDIAIRE', 'AUTRES'];

//3- création d'une liste de 10 clients
  List<Client> clients = [
    Client(nom: 'DAGAN', prenom: 'Franck'),
    Client(nom: 'DANDJO', prenom: 'Loïs'),
    Client(nom: 'WINSOU', prenom: 'Esther'),
    Client(nom: 'AHOUANMAHOUE', prenom: 'Derrick'),
    Client(nom: 'SOUNOUVOU', prenom: 'Richard'),
    Client(nom: 'KOUHOUNDE', prenom: 'Lazare'),
    Client(nom: 'SEWANOU', prenom: 'Perez'),
    Client(nom: 'BONGO', prenom: 'Fortune'),
    Client(nom: 'ODJO', prenom: 'Ziad'),
    Client(nom: 'GANHOUN', prenom: 'Boris')];

// Rajout d'une catégorie à chaque client
  for (int i = 0; i < clients.length; i++) {
    String categorie = listcategories[i % listcategories.length];
    print('Client: ${clients[i].nom} ${clients[i]
        .prenom}, Catégorie: $categorie');
  }
}

//4- 