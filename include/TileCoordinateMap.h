#ifndef TILECOORDINATEMAP_H
#define TILECOORDINATEMAP_H

#include <vector>
#include <utility>

#include "RadialVector2.h"

class TileCoordinateData;

class TileCoordinateMap
{
	public:
		TileCoordinateMap(int nRadius);

		void precomputeMap(int sightRadius);
		std::pair<int,int> getCoordinate(int i);
		double getCentralTheta(int i);
		int getRadiusSquared(int i);

	private:
		void checkIndex(int i);
		int radius;
		std::vector<TileCoordinateData> data;
		static bool dataSortComparitor(TileCoordinateData t1, TileCoordinateData t2);
};

class TileCoordinateData
{
	public:
		TileCoordinateData(RadialVector2 nvec, int nradiusSquared, std::pair<int,int> ncoord);

		RadialVector2 vec;
		int radiusSquared;
		std::pair<int,int> coord;
};

#endif
