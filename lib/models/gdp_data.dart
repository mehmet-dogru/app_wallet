class GDPData {
  final String cotinent;
  final int gdp;

  GDPData(this.cotinent, this.gdp);

  static List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData('First', 13),
    ];

    return chartData;
  }
}
