import 'package:ibm_watson_assistant/ibm_watson_assistant.dart';

class Watson {
  static final auth = IbmWatsonAssistantAuth(
    assistantId: '3777ce70-85f8-4544-aacd-46b307e2ba47',
    url: 'https://api.eu-de.assistant.watson.cloud.ibm.com',
    apikey: 'w6NF-PFopm_-d8UVBSjk3sbuXHzgmnVGKkNC_9xmxtnY',
  );
  static final IbmWatsonAssistant bot = IbmWatsonAssistant(auth);
  
 
  Future send(String text) async {
    if(text != ""){
    final _sessionId = await bot.createSession();
    return bot.sendInput(text, sessionId: _sessionId);}
  }
}
