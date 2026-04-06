import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:provider/provider.dart';
import 'package:volkswagen/providers/model_provider.dart';

class PlantMap extends StatefulWidget {
  const PlantMap({super.key});

  @override
  State<PlantMap> createState() => _PlantMapState();
}

class _PlantMapState extends State<PlantMap> with TickerProviderStateMixin {
  final MapController _mapController = MapController();

  void _animatedMove(LatLng dest, double zoom) {
    final latTween = Tween<double>(
        begin: _mapController.camera.center.latitude, end: dest.latitude);
    final lngTween = Tween<double>(
        begin: _mapController.camera.center.longitude, end: dest.longitude);
    final zoomTween =
        Tween<double>(begin: _mapController.camera.zoom, end: zoom);

    final controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
    final animation =
        CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn);

    controller.addListener(() {
      if (mounted) {
        _mapController.move(
          LatLng(latTween.evaluate(animation), lngTween.evaluate(animation)),
          zoomTween.evaluate(animation),
        );
      }
    });

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.dispose();
      } else if (status == AnimationStatus.dismissed) {
        controller.dispose();
      }
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    final modelProvider = Provider.of<ModelProvider>(context);
    final plants = modelProvider.plants;

    if (modelProvider.selectedPlant != null) {
      final selectedPlantData = plants.firstWhere(
        (p) => p.name == modelProvider.selectedPlant,
        orElse: () => plants.first,
      );

      final coords = LatLng(
        selectedPlantData.latitude,
        selectedPlantData.longitude,
      );

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          _animatedMove(coords, 10.0);
        }
      });
    }

    return FlutterMap(
      mapController: _mapController,
      options: const MapOptions(
        initialCenter: LatLng(50.0, 10.0),
        initialZoom: 4.5,
        maxZoom: 15.0,
        minZoom: 3.0,
      ),
      children: [
        TileLayer(
          urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
          subdomains: const ['a', 'b', 'c'],
          userAgentPackageName: 'dev.prosselloe.volkswagen',
        ),
        MarkerLayer(
          markers: plants.map((plant) {
            final isSelected = modelProvider.selectedPlant == plant.name;
            return Marker(
              width: 50,
              height: 50,
              point: LatLng(plant.latitude, plant.longitude),
              child: GestureDetector(
                onTap: () {
                  modelProvider.filterByPlant(plant.name);
                },
                child: Tooltip(
                  message: plant.name,
                  child: Icon(
                    Icons.location_pin,
                    size: isSelected ? 40 : 30,
                    color: isSelected ? Colors.cyan : Colors.red,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
