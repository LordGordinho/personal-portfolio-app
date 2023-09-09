class Redcarpet::CustomRender < Redcarpet::Render::HTML
  def block_quote(quote)
    %(<blockquote class="my-custom-class">#{quote}</blockquote>)
  end

  def paragraph(text)
    %(<p class="text-lg font-semibold text-gray-200">#{text}</p>)
  end

  def header(text, header_level)
    case header_level
    when 1
      %(<h#{header_level} class="text-3xl font-bold md:text-3xl dark:text-white">#{text}</h#{header_level}>)
    when 2
      %(<h#{header_level} class="text-2xl font-bold md:text-2xl dark:text-white">#{text}</h#{header_level}>)
    when 3
      %(<h#{header_level} class="text-1xl font-bold md:text-1xl dark:text-white">#{text}</h#{header_level}>)
    end
  end

  def list(contents, _list_type)
    %(<ul class="list-disc list-outside space-y-5 pl-5 text-lg text-gray-800 dark:text-gray-200">#{contents}</ul>)
  end

  def list_item(text, _list_type)
    %(<li class="pl-2">#{text}</li>)
  end

  def image(link, title, alt_text)
    %(<img src="#{link}" title="#{title}" alt="#{alt_text}" class="w-full object-cover rounded-xl" />)
  end
end
