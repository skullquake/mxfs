// This file was generated by Mendix Modeler 7.23.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package filesystem.proxies.microflows;

import java.util.HashMap;
import java.util.Map;
import com.mendix.core.Core;
import com.mendix.core.CoreException;
import com.mendix.systemwideinterfaces.MendixRuntimeException;
import com.mendix.systemwideinterfaces.core.IContext;
import com.mendix.systemwideinterfaces.core.IMendixObject;

public class Microflows
{
	// These are the microflows for the FileSystem module
	public static filesystem.proxies.File ds_file_child(IContext context, filesystem.proxies.Node _obj_node_parent)
	{
		try
		{
			Map<java.lang.String, Object> params = new HashMap<java.lang.String, Object>();
			params.put("obj_node_parent", _obj_node_parent == null ? null : _obj_node_parent.getMendixObject());
			IMendixObject result = (IMendixObject)Core.execute(context, "FileSystem.ds_file_child", params);
			return result == null ? null : filesystem.proxies.File.initialize(context, result);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}
	public static filesystem.proxies.Folder ds_folder_child(IContext context, filesystem.proxies.Node _obj_node_parent)
	{
		try
		{
			Map<java.lang.String, Object> params = new HashMap<java.lang.String, Object>();
			params.put("obj_node_parent", _obj_node_parent == null ? null : _obj_node_parent.getMendixObject());
			IMendixObject result = (IMendixObject)Core.execute(context, "FileSystem.ds_folder_child", params);
			return result == null ? null : filesystem.proxies.Folder.initialize(context, result);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}
	public static filesystem.proxies.Node ds_node_child(IContext context, filesystem.proxies.Node _obj_node_parent)
	{
		try
		{
			Map<java.lang.String, Object> params = new HashMap<java.lang.String, Object>();
			params.put("obj_node_parent", _obj_node_parent == null ? null : _obj_node_parent.getMendixObject());
			IMendixObject result = (IMendixObject)Core.execute(context, "FileSystem.ds_node_child", params);
			return result == null ? null : filesystem.proxies.Node.initialize(context, result);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}
	public static java.util.List<filesystem.proxies.Node> ds_node_roots(IContext context)
	{
		try
		{
			Map<java.lang.String, Object> params = new HashMap<java.lang.String, Object>();
			java.util.List<IMendixObject> objs = Core.execute(context, "FileSystem.ds_node_roots", params);
			java.util.List<filesystem.proxies.Node> result = null;
			if (objs != null)
			{
				result = new java.util.ArrayList<filesystem.proxies.Node>();
				for (IMendixObject obj : objs)
					result.add(filesystem.proxies.Node.initialize(context, obj));
			}
			return result;
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}
	public static void ivk_file_addaschild(IContext context, filesystem.proxies.Node _obj_node_parent)
	{
		try
		{
			Map<java.lang.String, Object> params = new HashMap<java.lang.String, Object>();
			params.put("obj_node_parent", _obj_node_parent == null ? null : _obj_node_parent.getMendixObject());
			Core.execute(context, "FileSystem.ivk_file_addaschild", params);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}
	public static void ivk_folder_addaschild(IContext context, filesystem.proxies.Node _obj_node_parent)
	{
		try
		{
			Map<java.lang.String, Object> params = new HashMap<java.lang.String, Object>();
			params.put("obj_node_parent", _obj_node_parent == null ? null : _obj_node_parent.getMendixObject());
			Core.execute(context, "FileSystem.ivk_folder_addaschild", params);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}
	public static void ivk_node_addaschild(IContext context, filesystem.proxies.Node _obj_node_parent)
	{
		try
		{
			Map<java.lang.String, Object> params = new HashMap<java.lang.String, Object>();
			params.put("obj_node_parent", _obj_node_parent == null ? null : _obj_node_parent.getMendixObject());
			Core.execute(context, "FileSystem.ivk_node_addaschild", params);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}
	public static void ivk_node_edit(IContext context, filesystem.proxies.Node __obj_node)
	{
		try
		{
			Map<java.lang.String, Object> params = new HashMap<java.lang.String, Object>();
			params.put("_obj_node", __obj_node == null ? null : __obj_node.getMendixObject());
			Core.execute(context, "FileSystem.ivk_node_edit", params);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}
}