enum ExploreListType { collection, anime }

class ExploreList {
  String? name;
  ExploreListType? exploreListType;

  List<dynamic>? itens;

  ExploreList({
    this.name,
    this.exploreListType,
    this.itens,
  });
}
