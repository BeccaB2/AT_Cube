cbuffer CBuf
{
	// Array for the colours of each face
	float4 face_colours[6];
};

float4 main(uint tid : SV_PrimitiveID) : SV_Target
{
	// Represents colour of each triangle face within the primitive
	return face_colours[tid / 2];
}