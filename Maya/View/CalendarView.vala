//  
//  Copyright (C) 2011 Maxwell Barvian
// 
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
// 
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
// 
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//

namespace Maya.View {

	public class CalendarView : Gtk.HBox {
	
        public signal void cal_month_changed(DateTime new_date);
        public signal void selection_changed(DateTime new_date);

		private Gtk.VBox box;
	
        // XXX: these will all become private
	    public Calendar.Weeks weeks { get; private set; }
		public Calendar.Header header { get; private set; }
		public Calendar.Grid grid { get; private set; }
		
		public CalendarView () {
			
			weeks = new Calendar.Weeks ();
			header = new Calendar.Header ();
			grid = new Calendar.Grid ();
			
			// HBox properties
			spacing = 0;
			homogeneous = false;
			
		    box = new Gtk.VBox(false,0);
			
			box.pack_start (header, false, false, 0);
			box.pack_end (grid, true, true, 0);
			
			pack_start(weeks, false, false, 0);
			pack_end(box, true, true, 0);
		}

	}

}

