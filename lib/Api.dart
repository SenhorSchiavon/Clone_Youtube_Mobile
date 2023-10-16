import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'Video.dart';

const chaveGoogle = '';

const idCanal = "UCZDsqSxJMnEsPg8Jm4FH8dQ";

const urlBase = "https://www.googleapis.com/youtube/v3/search";

class Api{

  Future <List<Video>> pesquisar(String pesquisa) async {
  http.Response resposta = await http.get(
    Uri.parse(
        urlBase+
            "?part=snippet"
            "&type=video"
            "&maxResults=15"
            "&order=date"
            "&channelId=${idCanal}"
            "&key=${chaveGoogle}"
            "&q=${pesquisa}"
    )
  );
  if(resposta.statusCode == 200){
    //print("Resultado:" +resposta.body);
    Map<String,dynamic> dadosJson = jsonDecode(resposta.body);
    //print(dadosJson["items"][0]["snippet"]["title"]);
    List<Video> listaVideos = dadosJson["items"].map<Video>(
        (map){
          return Video.fromJson(map);

        }
    ).toList();
    for(var v in listaVideos){
      print(v.titulo);
    }
    return listaVideos;
  }else{
    print("Erro ao buscar videos");
    return List.empty();
  }
  }

}