from pkg_resources import resource_string
from typing import List

def link_shorteners_list() -> List[str]:
    """
    Returns:
        List[str]: A list containing link shorteners collected so far.
        eg. ['bit.ly/', 'ow.ly/']
    """
    link_shorteners_file = resource_string('link_shorteners', 'link-shorteners.txt').decode('utf-8')
    
    # Removes duplicate urls present in the list, if any.
    link_shorteners_set = {line.strip() for line in link_shorteners_file.splitlines()}
    link_shorteners_list = list(link_shorteners_set)
    return link_shorteners_list


