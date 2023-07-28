//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;    // vec2( x, y )
varying vec4 v_vColour;        // vec4( r, g, b, a )
uniform float v_amount;

// Custom parameters. We must pass them manualy!

void main()
{
     gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
     gl_FragColor.rgb += v_amount;
}