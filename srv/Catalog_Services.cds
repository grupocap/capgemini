using {Capgeminis as capgemini} from '../db/schema';

service CustomerServicie {
    entity Products as projection on capgemini.Products;
}
