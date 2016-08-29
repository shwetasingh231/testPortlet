import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;

import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.util.bridges.mvc.MVCPortlet;

/**
 * 
 */

/**
 * @author mayurid
 *
 */
public class RegistrationMVCPortlet extends MVCPortlet {
	
	public void registerStudent(ActionRequest actionRequest,
            ActionResponse actionResponse) throws IOException, PortletException {
		String studentName = ParamUtil.getString(actionRequest, "fullname");
		String studentAge = ParamUtil.getString(actionRequest, "age");
		String studentAddress = ParamUtil.getString(actionRequest,
                  "address");
		String studentQualification = ParamUtil.getString(actionRequest, "qualification");
		String studentPercent = ParamUtil.getString(actionRequest,
                  "percent");
		String studentYeaOfPassing = ParamUtil.getString(actionRequest,
                "yop");
		
		 Map<String, String> studentMap = new HashMap<String, String>();
		 studentMap.put("fullname", studentName);
		 studentMap.put("age", studentAge);
		 studentMap.put("fullname", studentName);
		 studentMap.put("address", studentAddress);
		 studentMap.put("qualification", studentQualification);
		 studentMap.put("percent", studentPercent);
		 studentMap.put("yop", studentYeaOfPassing);
		 
		 actionRequest.setAttribute("studentMap", studentMap);
		 actionResponse.setRenderParameter("mvcPath","/html/jsps/studentRegistrationSuccess.jsp");
}

}
