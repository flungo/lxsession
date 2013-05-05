/* 
    Copyright 2012 Julien Lavergne <gilir@ubuntu.com>

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

namespace LDefaultApps
{
    [DBus(name = "org.lxde.SessionManager")]
    public interface DbusLxsession : GLib.Object
    {
        public abstract void PanelReload () throws IOError;
        public abstract void PanelCommandSet (string arg) throws IOError;
        public abstract void PanelSessionSet (string arg) throws IOError;
        public abstract string PanelCommandGet () throws IOError;
        public abstract string PanelSessionGet () throws IOError;
        public abstract void DockReload () throws IOError;
        public abstract void DockCommandSet (string arg) throws IOError;
        public abstract void DockSessionSet (string arg) throws IOError;
        public abstract string DockCommandGet () throws IOError;
        public abstract string DockSessionGet () throws IOError;
    }

    public class DbusBackend : GLib.Object
    {
        DbusLxsession dbus_lxsession = null;

        public DbusBackend ()
        {
            dbus_lxsession = GLib.Bus.get_proxy_sync(BusType.SESSION,
                                            "org.lxde.SessionManager",
                                            "/org/lxde/SessionManager");
        }

        public void PanelReload()
        {
            try
            {
                dbus_lxsession.PanelReload();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void PanelCommandSet(string arg)
        {
            try
            {
                dbus_lxsession.PanelCommandSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void PanelSessionSet(string arg)
        {
            try
            {
                dbus_lxsession.PanelSessionSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public string PanelCommandGet()
        {
            try
            {
                return dbus_lxsession.PanelCommandGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }

        public string PanelSessionGet()
        {
            try
            {
                return dbus_lxsession.PanelSessionGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }

        public void DockReload()
        {
            try
            {
                dbus_lxsession.DockReload();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void DockCommandSet(string arg)
        {
            try
            {
                dbus_lxsession.DockCommandSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void DockSessionSet(string arg)
        {
            try
            {
                dbus_lxsession.DockSessionSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public string DockCommandGet()
        {
            try
            {
                return dbus_lxsession.DockCommandGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }

        public string DockSessionGet()
        {
            try
            {
                return dbus_lxsession.DockSessionGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }
    }
}
