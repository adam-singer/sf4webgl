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

class VertexAttribute
{
  
  String _name;
  int _index;
  
  VertexAttribute(String this._name, int this._index);
  
  String get name => _name;
  
  void enable()
  {
    _context.enableVertexAttribArray(_index);
  }
  
  void disable()
  {
    _context.disableVertexAttribArray(_index);
  }

  void applyBuffer(Buffer buffer)
  {
    if(buffer._layouts.length == 0)
    {
      throw new ArgumentError('buffer has no layout!');
    }
    if(buffer._layouts.length > 1)
    {
      throw new ArgumentError('buffer has more than 1 layout!');
    }
    
    buffer.bind();
    BufferLayout layout = buffer._layouts[0];
    _context.vertexAttribPointer(_index, layout._size, layout._type._glConst, layout._normalized, layout._stride, layout._offset);
  }
  
  void applyLayout(BufferLayout layout)
  {
    layout._buffer.bind();
    _context.vertexAttribPointer(_index, layout._size, layout._type._glConst, layout._normalized, layout._stride, layout._offset);
  }
  
}
