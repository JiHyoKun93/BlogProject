
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.core.MethodParameter;
import org.springframework.web.bind.support.WebArgumentResolver;
import org.springframework.web.context.request.NativeWebRequest;

public class CommandMapArgumentResolver implements WebArgumentResolver{
   
   /**
    * Controller의 메소드 argument에 commandMap이라는 Map 객체가 있다면 
    * HTTP request 객체에 있는 파라미터이름과 값을 commandMap에 담아 returng한다.
    * 배열인 파라미터 값은 배열로 Map에 저장한다.
    * 
    * @param methodParameter - 메소드 파라미터의 타입,인덱스등의 정보 
    * @param webRequest - web request 객체
    * @return argument에 commandMap(java.util.Map)이 있으면 commandMap, 없으면<code>UNRESOLVED</code>.
    * @exception Exception
    */
   public Object resolveArgument(MethodParameter methodParameter,
         NativeWebRequest webRequest) throws Exception {
      
      Class<?> clazz = methodParameter.getParameterType();
      String paramName = methodParameter.getParameterName();
      
      if(clazz.equals(Map.class) && paramName.equals("commandMap")){
         
         Map<String, Object> commandMap = new HashMap<String, Object>();
         HttpServletRequest request = (HttpServletRequest) webRequest.getNativeRequest();   
         Enumeration<?> enumeration = request.getParameterNames();
         while(enumeration.hasMoreElements()){
            String key = (String) enumeration.nextElement();
            String[] values = request.getParameterValues(key);
            if(values!=null){
               commandMap.put(key, (values.length > 1) ? values:values[0] );
               if(key.indexOf("[]") != -1) {
                  List<String> dump = new ArrayList<String>();      
                  for (int i = 0; i < values.length; i++) {
                     String sValue = values[i];
                     dump.add(sValue);
                  }
                  commandMap.put(key,dump);
               }
            }
         }
         System.out.println("ChangeCommonMap : " + commandMap);
         return commandMap;
      }
      return UNRESOLVED;
   }
}