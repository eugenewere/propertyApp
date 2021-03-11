class House {
  final String image;
  final String title;
  final String location;
  final String description;
  final String price;
  final double rating;

  House({
    this.image,
    this.title,
    this.location,
    this.description,
    this.price,
    this.rating,
  });

  List<House> getHouses() {
    return [
      House(
        image:
            "https://blog.capterra.com/wp-content/uploads/2019/12/house-2.jpg",
        title: "SkyStar Hotel",
        location: 'Juja, Kiambu',
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
        price: '80,000',
        rating: 2,
      ),
      House(
        image:
            "https://blog.capterra.com/wp-content/uploads/2019/12/house-5.jpg",
        title: "GroundStar",
        location: 'Juja, Kiambu',
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
        price: '40,000',
        rating: 4.5,
      ),
      House(
        image:
            "https://blog.capterra.com/wp-content/uploads/2019/12/house-5.jpg",
        title: "Merica Hotel",
        location: 'Juja, Kiambu',
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
        price: '85,000',
        rating: 3,
      ),
      House(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxvFZ2WpE4ZAUnW7w6zOdg-I5XXqQQwAgKec5oSnCO1taZA5IYq-G732PxVmOKakRtOes&usqp=CAU",
        title: "Merica2 Hotel",
        location: 'Juja, Kiambu',
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
        price: '30,000',
        rating: 3,
      ),
    ];
  }
}
