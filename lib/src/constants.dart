/*
 * This file is part of sf4webgl.
 *
 * sf4webgl is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesse General Public License as 
 * published by the Free Software Foundation, either version 3 of 
 * the License, or (at your option) any later version.
 *
 * sf4webgl is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public 
 * License along with sf4webgl. If not, see <http://www.gnu.org/licenses/>.
 *
 * (c) 2013 by Oliver Damm, Am Wasserberg 8, 22869 Schenefeld
 *
 * mail: oliver [dot] damm [at] gmx [dot] de
 * web: http://www.blimster.net 
 */
part of sf4webgl;

abstract class WebGlConst
{
  
  final int _glConst;
  
  const WebGlConst(int this._glConst);  
  
}

class DataType extends WebGlConst
{

  static final DataType BYTE = const DataType(WebGLRenderingContext.BYTE);
  static final DataType SHORT = const DataType(WebGLRenderingContext.SHORT);
  static final DataType UNSIGNED_BYTE = const DataType(WebGLRenderingContext.UNSIGNED_BYTE);
  static final DataType UNSIGNED_SHORT = const DataType(WebGLRenderingContext.UNSIGNED_SHORT);
  static final DataType FLOAT = const DataType(WebGLRenderingContext.FLOAT);
  
  const DataType(int glConst) : super(glConst);
  
}

class BufferUsage extends WebGlConst
{
  
  static final BufferUsage STATIC_DRAW = const BufferUsage(WebGLRenderingContext.STATIC_DRAW);
  static final BufferUsage DYNAMIC_DRAW = const BufferUsage(WebGLRenderingContext.DYNAMIC_DRAW);
  static final BufferUsage STREAM_DRAW = const BufferUsage(WebGLRenderingContext.STREAM_DRAW);
  
  const BufferUsage(int glConst) : super(glConst);
  
}

class BufferTarget extends WebGlConst
{
  
  static final BufferTarget ARRAY_BUFFER = const BufferTarget(WebGLRenderingContext.ARRAY_BUFFER);
  static final BufferTarget ELEMENT_ARRAY_BUFFER = const BufferTarget(WebGLRenderingContext.ELEMENT_ARRAY_BUFFER);

  const BufferTarget(int glConst) : super(glConst);
  
}

class FrontFaceMode extends WebGlConst
{
  
  static final FrontFaceMode CW = const FrontFaceMode(WebGLRenderingContext.CW);
  static final FrontFaceMode CCW = const FrontFaceMode(WebGLRenderingContext.CCW);
  
  const FrontFaceMode(int glConst) : super(glConst);
  
}

class CullFaceMode extends WebGlConst
{
  
  static final CullFaceMode FRONT = const CullFaceMode(WebGLRenderingContext.FRONT);
  static final CullFaceMode BACK = const CullFaceMode(WebGLRenderingContext.BACK);
  
  const CullFaceMode(int glConst) : super(glConst);
  
}

class ClearMode extends WebGlConst
{

  static final ClearMode COLOR_BUFFER = const ClearMode(WebGLRenderingContext.COLOR_BUFFER_BIT);
  static final ClearMode DEPTH_BUFFER = const ClearMode(WebGLRenderingContext.DEPTH_BUFFER_BIT);
  
  const ClearMode(int glConst) : super(glConst);
  
}

class DrawMode extends WebGlConst
{

  static final DrawMode TRIANGLES = const DrawMode(WebGLRenderingContext.TRIANGLES);
  static final DrawMode TRIANGLE_FAN = const DrawMode(WebGLRenderingContext.TRIANGLE_FAN);
  static final DrawMode TRIANGLE_STRIP = const DrawMode(WebGLRenderingContext.TRIANGLE_STRIP);
  
  static final DrawMode LINES = const DrawMode(WebGLRenderingContext.LINES);
  static final DrawMode LINE_STRIP = const DrawMode(WebGLRenderingContext.LINE_STRIP);
  static final DrawMode LINE_LOOP = const DrawMode(WebGLRenderingContext.LINE_LOOP);
  
  const DrawMode(int glConst) : super(glConst);
  
}


