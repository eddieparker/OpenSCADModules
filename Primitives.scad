
module Frustum(farPlaneScale, nearPlaneScale)
{
	near=[0,0,-.5];
	far=[0,0,.5];
	polyhedron(points=[ [ .5, .5, 0]*nearPlaneScale+near, [.5, -.5, 0]*nearPlaneScale+near, [-.5, -.5, 0]*nearPlaneScale+near, [-.5, .5, 0]*nearPlaneScale+near, // Top
						[ .5, .5, 0]*farPlaneScale+far, [.5, -.5, 0]*farPlaneScale+far, [-.5, -.5, 0]*farPlaneScale+far, [-.5, .5, 0]*farPlaneScale+far, // Bottom
						],
					faces=[ [2,1,0], [0,3,2], // Bottom
							[5,1,2], [5,2,6], // Back
							[6,2,3], [6,3,7], // Right
							[5,0,1], [4,0,5], // Left
							[3,0,4], [4,7,3], // Front
							[4,5,6], [6,7,4], // Top
					]
					);
}
