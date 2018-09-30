import xml.etree.ElementTree as ET

'''Script to parse an example XML feed (shown below) and format/display tsv contents.'''

# sub to extract info from feed
def get_elem(item, headers):
	detail = {}
	for att in headers:
		lookup = item.find(att)
		detail[att] = lookup.attrib if att == 'desc' else lookup.text

	return detail

# format the description attributes
def format_desc(desc):
	list = []
	for x,y in desc.items():
		if len(y) > 0:
			list.append(y[0].upper() + y[1:]) 

	return ', '.join(list)

def main():
	tree = ET.parse('basket_eg.xml')
	root = tree.getroot()

	headers = ['name','desc','quantity','value'] 
	total = 0

	print("Item\tDescription\tQuantity\tPrice\n")

	for item in root.findall('item'):
		details = get_elem(item, headers)
		
		# calculate totals
		price = float(details['value']) * int(details['quantity'])
		total += price

		# dump item summary
		print("{}\t{}\t{}\t{}".format(
				details['name'],
				format_desc(details['desc']),
				details['quantity'],
				price
			)
		)

	print('Total cost: {}'.format(total))

if __name__ == '__main__':
	main()

'''
<?xml version="1.0"?>
<basket>
	<item>
		<id>SKU123</id>
		<name>Digital Watch</name>
		<desc colour="grey" other="medium"/>
		<value>20.00</value>
		<quantity>1</quantity>
	</item>
	<item>
		<id>SKU783</id>
		<name>Glass Wipes</name>
		<desc colour="" other="pack of 30"/>
		<value>2.00</value>
		<quantity>3</quantity>
	</item>
	<item>
		<id>SKU001</id>
		<name>Fountain Pen</name>
		<desc colour="silver" other=""/>
		<value>7.29</value>
		<quantity>2</quantity>
	</item>
	<item>
		<id>SKU281</id>
		<name>Candle</name>
		<desc colour="blue" other="seabreeze"/>
		<value>3.99</value>
		<quantity>1</quantity>
	</item>
	<item>
		<id>SKU020</id>
		<name>Pen Ink</name>
		<desc colour="black" other="20ml"/>
		<value>1.49</value>
		<quantity>1</quantity>
	</item>
</basket>
'''