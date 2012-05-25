package net.spring3.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import net.spring3.form.Tutor;


	public class SignupValidator implements Validator{

		@Override
		public boolean supports(Class clazz) {
			//just validate the Customer instances
			return Tutor.class.isAssignableFrom(clazz);

		}

		@Override
		public void validate(Object target, Errors errors) {
			
			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email",
					"required.email", "Field name is required.");
			
			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name",
					"required.name", "Field name is required.");
			
			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password",
					"required.password", "Field name is required.");
				
			
			
			
			Tutor cust = (Tutor)target;
			
		/*	if(!(cust.getPassword().equals(cust.getConfirmPassword()))){
				errors.rejectValue("password", "notmatch.password");
			}
			
			
			if("NONE".equals(cust.getCountry())){
				errors.rejectValue("country", "required.country");
			 }  */
			
		}
		
	}

