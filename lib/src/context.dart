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

WebGLRenderingContext _context = null;

void init(CanvasElement canvas)
{
  _context = canvas.getContext('webgl');
  if(_context == null)
  {
    _context = canvas.getContext('experimental-webgl');
  }
}

void viewport(int x, int y, int width, int height) => _context.viewport(x, y, width, height); 

void clearColor(num r, num g, num b, num a) => _context.clearColor(r, g, b, a);

void clearDepth(num depth) => _context.clearDepth(depth);

void lineWidth(num width) => _context.lineWidth(width);

void frontFace(FrontFaceMode mode) => _context.frontFace(mode._glConst);

void cullFace(CullFaceMode mode) => _context.cullFace(mode._glConst);

void enableDepthTest(bool enable) => _enable(enable, WebGLRenderingContext.DEPTH_TEST);

void _enable(bool enable, int cap)
{
  if(enable)
  { 
    _context.enable(cap);
  }  
  else 
  {
    _context.disable(cap);
  } 
  
}


