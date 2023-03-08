<!-- <?php
	if (!function_exists('meta')) {
			/**
			 * Generates meta tags from an array of key/values.
			 *
			 * @param   array
			 * @param   string
			 * @param   string
			 * @param   string
			 *
			 * @return string
			 */
		function meta($name = '', $content = '', $type = 'name', $newline = "")
		{
			if (!is_array($name)) {
				$name = array(array('name' => $name, 'content' => $content, 'type' => $type, 'newline' => $newline));
			} elseif (isset($name['name'])) {
				// Turn single array into multidimensional
				$name = array($name);
			}
	
			$str = '';
			foreach ($name as $meta) {
				$type = (isset($meta['type']) && $meta['type'] !== 'name') ?: 'name';
				$name = isset($meta['name']) ? $meta['name'] : '';
				$content = isset($meta['content']) ? $meta['content'] : '';
				$newline = isset($meta['newline']) ? $meta['newline'] : "";
	
				if (isset($meta['type']) && $meta['type'] !== 'name') {
					$type = 'http-equiv';
				} elseif (isset($meta['property'])) {
					$type = 'property';
					$name = $meta['property'];
				} else {
					$type = 'name';
				}
				$str .= '<meta '.$type.'="'.$name.'" content="'.$content.'">'.$newline;
			}
	
			return $str;
		}
	}

	// meta([
	// 	['name' => 'description', 'content' => ''],
	// 	['property' => 'fb:app_id', 'content' => ''],
	// 	['property' => 'og:type', 'content' => ''],
	// 	['property' => 'og:title', 'content' => ''],
	// 	['property' => 'og:url', 'content' => ''],
	// 	['property' => 'og:description', 'content' => ''],
	// 	['property' => 'og:image', 'content' => ''],
	// ]);
?> -->
