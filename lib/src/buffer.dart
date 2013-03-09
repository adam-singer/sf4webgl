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

class Buffer
{
  
  static Map<int, WebGLBuffer> _boundBuffer = new Map<int, WebGLBuffer>();
  
  WebGLBuffer _buffer;
  int _target;
  DataType _type;
  int _dataSize;
  List<BufferLayout> _layouts;
  
  Buffer(BufferTarget target)
  {
    _buffer = _context.createBuffer();
    _target = target._glConst;
    _layouts = new List<BufferLayout>();
  }
  
  void bind()
  {
    if(_boundBuffer[_target] != _buffer)
    {
      _context.bindBuffer(_target, _buffer);
      _boundBuffer[_target] = _buffer;
    }
  }
  
  void dataFloat32(Float32Array data, [BufferUsage usage])
  {
    _type = DataType.FLOAT;
    _dataSize = data.length;
    bind();
    _context.bufferData(_target, data.buffer, ?usage ? usage._glConst : BufferUsage.STATIC_DRAW._glConst);
  }
  
  void dataUint16(Uint16Array data, [BufferUsage usage])
  {
    _type = DataType.SHORT;
    _dataSize = data.length;
    bind();
    _context.bufferData(_target, data.buffer, ?usage ? usage._glConst : BufferUsage.STATIC_DRAW._glConst);
  }
  
  BufferLayout layout(int size, { bool normalized : false })
  {
    int strideAndOffset = 0;
    
    for(BufferLayout layout in _layouts)
    {
      strideAndOffset += layout._size;
    }
    
    BufferLayout layout = new BufferLayout(this, size, _type, normalized);
    layout._stride = strideAndOffset;
    layout._offset = strideAndOffset;
    
    _layouts.add(layout);
    
    return layout;
  }
  
}

class BufferLayout
{
  
  Buffer _buffer;
  int _size;
  DataType _type;
  bool _normalized;
  int _stride;
  int _offset;
  
  BufferLayout(Buffer this._buffer, int this._size, DataType this._type, bool this._normalized);
  
}