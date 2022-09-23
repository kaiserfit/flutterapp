void main() {
  var mm = MealPlan(1, 2, 'asdf');
  print(mm.getLink(1, 2));
}

class MealPlan {
  int month;
  int id;
  String link;

  MealPlan(this.month, this.id, this.link);

  String getLink(int month, int id) {
    return link;
  }
}
