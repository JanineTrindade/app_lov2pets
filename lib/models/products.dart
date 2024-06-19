//import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  //final List<Color> colors;
  final String category;
  final double rate;
  int quantity;


Product(
  {required this.title,
   required this.review,
   required this.description,
   required this.image,
   required this.price,
   //required this.colors,
   required this.seller,
   required this.category,
   required this.rate,
   required this.quantity});
}

final List<Product> racao = [
  Product(
    title: "Ração Whiskas 1+",
    description: 
    "Indicada para gatos adultos a partir de 1 ano de idade;- Ração premium 100% completa e balanceada;- Nuggets crocantes com recheio macio e saboroso;- Com prebióticos que contribuem para digestão saudável;- Desenvolvida nutricionalmente em conjunto com veterinários;- Com múltiplas fibras para promover a saúde gastrointestinal;- Controle de minerais para manter o trato urinário saudável.",
     image: "imagens/1.png", 
     price: 49.90,
     seller: "Teste",
     category: "racao",
     review: "(120 reviews)",
     rate: 4.8,
     quantity: 1,
  ),

  Product(
    title: "Golden Gatos",
    description: 
    "Após a castração é normal que o gato sofra algumas mudanças em seu metabolismo, por isso oferecer uma alimentação específica é o mais adequado. A Ração Golden Gatos Castrados Frango é a melhor opção para seu gato.",
     image: "imagens/2.png", 
     price: 29.90,
     seller: "Teste",
     category: "racao",
     review: "(120 reviews)",
     rate: 4.9,
     quantity: 1,
  ),

  Product(
    title: "Golden Formula",
    description: 
    " Ração Golden Seleção Natural Cães Adultos Frango com Batata Doce é um alimento Premium Especial com fontes de fibras e sais minerais ideal para cães adultos.",
     image: "imagens/3.png", 
     price: 199.90,
     seller: "Teste",
     category: "racao",
     review: "(120 reviews)",
     rate: 4.9,
     quantity: 1,
  ),

  Product(
    title: "Pedigree Adulto",
    description: 
    " Um alimento premium que oferece uma fórmula 100% completa e balanceada, projetada para proporcionar uma ótima digestão e fezes firmes, facilitando a limpeza.",
     image: "imagens/4.png", 
     price: 289.90,
     seller: "Teste",
     category: "racao",
     review: "(120 reviews)",
     rate: 4.7,
     quantity: 1,
  ),

];

/////////////////HIGIENE///////////////////

final List<Product> higiene = [
  Product(
    title: "Areia Pipicat",
    description: 
    "A Areia Pipicat Classic é uma das sugestões de banheiros para felinos mais procuradas do mercado.",
     image: "imagens/higiene1.png",  
     price: 16.11,
     seller: "Teste",
     category: "higiene",
     review: "(120 reviews)",
     rate: 4.7,
     quantity: 1,
  ),

  Product(
    title: "Refil Saquinhos",
    description: 
    "Reponha os saquinhos higiênicos e evite passar apuros durante o passeio com o seu pet. O Refil Saquinhos Higiênicos HomePet vem com 4 rolos de 20 saquinhos cada.",
     image: "imagens/higiene2.png", 
     price: 16.70,
     seller: "Teste",
     category: "higiene",
     review: "(120 reviews)",
     rate: 4.5,
     quantity: 1,
  ),

  Product(
    title: "Kit Sanol Dog",
    description: 
    " Em embalagem econômica o Kit Shampoo, Colônia e Condicionador Sanol Dog é ideal para manter seu pet limpinho e perfumado por mais tempo.",
     image: "imagens/higiene3.png", 
     price: 43.70,
     seller: "Teste",
     category: "higiene",
     review: "(120 reviews)",
     rate: 4.9,
     quantity: 1,
  ),

  Product(
    title: "Limpeza Auricular Oto",
    description: 
    " O Oto Clean Up Soft Care é uma solução de limpeza que remove sujidades e odores desagradáveis das orelhas de cães e gatos sendo ideal para higienização semanal do conduto auditivo dos animais de estimação.",
     image: "imagens/higiene4.png", 
     price: 51.21,
     seller: "Teste",
     category: "higiene",
     review: "(120 reviews)",
     rate: 4.8,
     quantity: 1,
  ),

];

/////////////////PETSAFE///////////////////

final List<Product> petsafe = [
  Product(
    title: "Grade Porta Plus",
    description: 
    "grade abre e fecha para os dois lados para facilitar a circulação das pessoas, abre e fecha com molas, exclusiva trava de segurança.",
     image: "imagens/safe1.png", 
     price: 269.90,
     seller: "Teste",
     category: "petsafe",
     review: "(120 reviews)",
     rate: 4.9,
     quantity: 1,
  ),

  Product(
    title: "Cinto de Segurança",
    description: 
    "Cinto de Segurança veicular Alvorada Pet, tem fácil ajuste e encaixe no plugue do automóvel.",
     image: "imagens/safe2.png", 
     price: 11.50,
     seller: "Teste",
     category: "petsafe",
     review: "(120 reviews)",
     rate: 5.1,
     quantity: 1,
  ),

  Product(
    title: "Guia Azul P",
    description: 
    "A Guia São Pet Azul é uma grande aliada nos passeios com o seu melhor amigo.",
     image: "imagens/safe3.png", 
     price: 53.90,
     seller: "Teste",
     category: "petsafe",
     review: "(120 reviews)",
     rate: 4.9,
     quantity: 1,
  ),

  Product(
    title: "Guia Frevo P",
    description: 
    "A Guia Frevo São Pet é revestida de neoprene para proteger as mãos, fita de poliéster super resistente, variedade de estampas e cores e mosquetão giratório com trava de rosca para maior segurança.",
     image: "imagens/safe4.png", 
     price: 59.30,
     seller: "Teste",
     category: "petsafe",
     review: "(120 reviews)",
     rate: 5.2,
     quantity: 1,
  ),

];

/////////////////DIVERSÃO///////////////////

final List<Product> diversao = [
  Product(
    title: "Bolinha Cravinho",
    description: 
    "O Brinquedo Bolinha Cravinho LCM Amarelo é ideal para brincadeiras de correr e pegar com o intuito de entreter e estimular o pet na prática de exercícios físicos.",
     image: "imagens/diver1.png", 
     price: 10.20,
     seller: "Teste",
     category: "diversao",
     review: "(120 reviews)",
     rate: 3.8,
     quantity: 1,
  ),

  Product(
    title: "Bola Kong Sports",
    description: 
    "A Bola Kong Sports é um brinquedo produzido com um material seguro e resistente que oferece um ótimo desafio aos cães, apresentando diferentes graus de dificuldade que estimularão até o cão mais esperto.",
     image: "imagens/diver2.png", 
     price: 69.60,
     seller: "Teste",
     category: "diversao",
     review: "(120 reviews)",
     rate: 3.9,
     quantity: 1,
  ),

  Product(
    title: "Arranhador House",
    description: 
    "O Arranhador House Liso São Pet Marrom e Bege é indicado para gatos de todas as idades e ideal para sua diversão ou descanso.",
     image: "imagens/diver3.png", 
     price: 480.90,
     seller: "Teste",
     category: "diversao",
     review: "(120 reviews)",
     rate: 4.7,
     quantity: 1,
  ),

  Product(
    title: "Cat Laser Vermelho",
    description: 
    "O Brinquedo Interativo Cat Laser Pet Games proporciona bem-estar físico e mental atiçando o instinto de caça.",
     image: "imagens/diver4.png", 
     price: 25.10,
     seller: "Teste",
     category: "diversao",
     review: "(120 reviews)",
     rate: 4.3,
     quantity: 1,
  ),

];


