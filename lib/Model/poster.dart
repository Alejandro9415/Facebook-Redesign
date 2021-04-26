class Poster {
  Poster(this.person, this.photo, this.comment, this.name, this.photoComment, this.nameComment, this.publicComment);

  final String person,
      photo,
      comment,
      name,
      photoComment,
      nameComment,
      publicComment;
}

final List<Poster> poster = [
  Poster(
    'assets/post/person.png',
    'assets/post/public.png',
    'Me encanto la sesión de fotos que me hizo mi amigo 😍🥺 ',
    'Daniela Fernández Ramos',
    'assets/post/person-comment.png',
    'Michael Bruno',
    'Esta foto esta muy cool, deberías ser modelo'
  ),
];
