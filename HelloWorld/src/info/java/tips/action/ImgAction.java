package info.java.tips.action;

import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

import info.java.tips.form.ImgForm;

public class ImgAction extends Action{
	
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		ImgForm imgForm = (ImgForm)form;

		FormFile file = imgForm.getFile();

		// Get the servers upload directory real path name
		String filePath = getServlet().getServletContext().getRealPath("/") + "upload";
		System.out.print(filePath);
		// create the upload folder if not exists
		File folder = new File(filePath);
		if (!folder.exists()) {
			folder.mkdir();
		}

		String fileName = file.getFileName();

		if (!("").equals(fileName)) {

			System.out.println("Server path:" + filePath);
			File newFile = new File(filePath, fileName);

			if (!newFile.exists()) {
				FileOutputStream fos = new FileOutputStream(newFile);
				fos.write(file.getFileData());
				fos.flush();
				fos.close();
			}

			request.setAttribute("uploadedFilePath", newFile.getAbsoluteFile());
			request.setAttribute("uploadedFileName", newFile.getName());
		}
		else {
			return mapping.findForward("fail");
		}

		return mapping.findForward("success");
	}
}
