<div class="maincontentheader">
<h1>{"Search"|i18n("design/standard/content/search")}</h1>
</div>

<div class="block">
<label>{"For more options try the "|i18n("design/standard/content/search")} <a href={"/content/advancedsearch/"|ezurl}>{"advanced Search"|i18n("design/standard/content/search")}</a></label>
</div>


{switch name=Sw match=$search_count}
  {case match=0}
  <div class="warning">
  <h2>{"No results were found for searching:"|i18n("design/standard/content/search")} "{$search_text}"</h2>
  </div>
  {/case}
  {case}
  <div class="feedback">
  <h2>{"Search for:"|i18n("design/standard/content/search")} "{$search_text}" {"returned"|i18n("design/standard/content/search")} {$search_count} {"matches"|i18n("design/standard/content/search")}</h2>
  </div>
  {/case}
{/switch}
<table class="list" width="100%" border="0" cellspacing="0" cellpadding="0">
{section show=$search_result}
<th>{"Object name"|i18n("design/standard/content/search")}</th>
<th>{"Class name"|i18n("design/standard/content/search")}</th>
<tr>
  {section name=SearchResult loop=$search_result show=$search_result sequence=array(bglight,bgdark)}
    <td class="{$SearchResult:sequence}">
    <a href={concat("/content/view/full/",$SearchResult:item.main_node_id)|ezurl}>{$SearchResult:item.name}</a>
       
    </td>
    <td class="{$SearchResult:sequence}">
      {$SearchResult:item.object.class_name}
    </td>
  {delimiter modulo=1}
</tr>
<tr>
  {/delimiter}
  {section-else}
  {/section}
{/section}
</tr>
</table>
