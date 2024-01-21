// ignore_for_file: file_names

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AppBody extends StatefulWidget {
  const AppBody({Key? key});

  @override
  State<AppBody> createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  Response _res = Response(data: "", status: 0);
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      var res = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/todos"));
      await Future.delayed(const Duration(seconds: 2));
      setState(() {
        _res = Response.update(
            data: res.body, status: res.statusCode, connectionState: CS.done);
      });
    } catch (e) {
      SocketException err = e as SocketException;
      setState(() {
        _res = Response.update(
            data: err.message, status: 500, connectionState: CS.error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: _res.connectionStatus == CS.fetching
          ? const Center(
              child: Padding(
              padding: EdgeInsets.all(16.0),
              child: CircularProgressIndicator(),
            ))
          : Padding(
              padding: EdgeInsets.all(8),
              child: (_res.connectionStatus == CS.done
                  ? Text("Data: ${_res.data}")
                  : Text("Error: ${_res.data}")),
            ),
    );
  }
}

class Response {
  int status;
  String data;
  CS connectionStatus = CS.fetching;

  Response(
      {required this.data,
      required this.status,
      this.connectionStatus = CS.fetching});

  factory Response.update({data = String, status = int, connectionState = CS}) {
    return Response(
        data: data, status: status, connectionStatus: connectionState);
  }
}

enum CS { done, fetching, error }
