{def $answer=null}
{if is_set( $question.answer )}
   {set $answer = $question.answer}
{/if}
{if is_set( $question_result.text )}
   {if is_set( $survey_validation.post_variables.variables[ $question.id ] )}
       {set $answer = $survey_validation.post_variables.variables[ $question.id ]}
   {else}
       {set $answer = $question_result.text}
   {/if}
{/if}
<div class="survey-choices">
   <label>{$question.question_number}. {$question.text|wash('xhtml')} {if $question.mandatory}<strong class="required">*</strong>{/if}</label>
	
	CAPTCHA HERE!
	
   <input type="text" name="{$prefix_attribute}_ezsurvey_answer_{$question.id}_{$attribute_id}">
 </div>