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

class Uniform
{
  
  String _name;
  WebGLUniformLocation _location;
  
  Uniform(String this._name, WebGLUniformLocation this._location);
  
  void set1f(num value)
  {
    _context.uniform1f(_location, value);
  }
  
  void set2f(num x, num y)
  {
    _context.uniform2f(_location, x, y);
  }

  void set3f(num x, num y, num z)
  {
    _context.uniform3f(_location, x, y, z);
  }
  
  void set4f(num x, num y, num z, num w)
  {
    _context.uniform4f(_location, x, y, z, w);
  }
  
  void setMatrix4(mat4 matrix)
  {
    Float32Array array = new Float32Array(16);
    matrix.copyIntoArray(array);
    _context.uniformMatrix4fv(_location, false, array);
  }
  
}